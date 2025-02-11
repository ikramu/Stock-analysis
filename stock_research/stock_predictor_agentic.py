import requests
import yfinance as yf
import pandas as pd
import numpy as np
from datetime import datetime, timedelta
from typing import List, Dict, Tuple
import argparse
import json

class OllamaAPI:
    def __init__(self, base_url="http://localhost:11434"):
        self.base_url = base_url

    def generate(self, messages, model="llama2"):
        prompt = " ".join([m["content"] for m in messages])
        try:
            response = requests.post(
                f"{self.base_url}/api/generate",
                json={
                    "model": model,
                    "prompt": prompt,
                    "stream": False
                }
            ).json()
            return response.get('response', '')
        except Exception as e:
            print(f"API Error: {str(e)}")
            return ""

class LLMAnalysis:
    def __init__(self, llm):
        self.llm = llm

    def get_historical_context(self, ticker: str) -> Dict:
        prompt = f"""
        Based on your training data until April 2024, analyze {ticker} from Swedish stock market:
        1. Historical performance
        2. Industry position
        3. Company strengths/weaknesses
        4. Major events/changes
        5. Buy/sell recommendations
        
        Return only a JSON object:
        {{
            "context_score": <float 0-1>,
            "confidence": <float 0-1>,
            "key_insights": "<brief summary>"
        }}
        Focus more one near term performance within last 6-12 months. Please don't include any general text like I am an AI agent, no pre or post sentences. Just provide JSON object and nothing more.
        """
        response = self.llm.generate([{"role": "user", "content": prompt}])
        try:
            return json.loads(response)
        except:
            return {"context_score": 0.5, "confidence": 0.3, "key_insights": "Analysis unavailable"}

class TechnicalAnalysis:
    @staticmethod
    def calculate_indicators(df: pd.DataFrame) -> Dict:
        df['SMA_20'] = df['Close'].rolling(window=20).mean()
        df['SMA_50'] = df['Close'].rolling(window=50).mean()
        df['RSI'] = TechnicalAnalysis._calculate_rsi(df['Close'])
        df['MACD'], df['Signal'] = TechnicalAnalysis._calculate_macd(df['Close'])
        df['BB_upper'], df['BB_lower'] = TechnicalAnalysis._calculate_bollinger_bands(df['Close'])
        
        return {
            'trend': TechnicalAnalysis._analyze_trend(df),
            'momentum': TechnicalAnalysis._analyze_momentum(df),
            'volatility': TechnicalAnalysis._analyze_volatility(df),
            'support_resistance': TechnicalAnalysis._find_support_resistance(df)
        }
    
    @staticmethod
    def _calculate_rsi(prices: pd.Series, period: int = 14) -> pd.Series:
        delta = prices.diff()
        gain = (delta.where(delta > 0, 0)).rolling(window=period).mean()
        loss = (-delta.where(delta < 0, 0)).rolling(window=period).mean()
        rs = gain / loss
        return 100 - (100 / (1 + rs))
    
    @staticmethod
    def _calculate_macd(prices: pd.Series) -> Tuple[pd.Series, pd.Series]:
        exp1 = prices.ewm(span=12, adjust=False).mean()
        exp2 = prices.ewm(span=26, adjust=False).mean()
        macd = exp1 - exp2
        signal = macd.ewm(span=9, adjust=False).mean()
        return macd, signal
    
    @staticmethod
    def _calculate_bollinger_bands(prices: pd.Series, window: int = 20) -> Tuple[pd.Series, pd.Series]:
        sma = prices.rolling(window=window).mean()
        std = prices.rolling(window=window).std()
        upper_band = sma + (std * 2)
        lower_band = sma - (std * 2)
        return upper_band, lower_band
    
    @staticmethod
    def _analyze_trend(df: pd.DataFrame) -> Dict:
        current_price = df['Close'].iloc[-1]
        sma_20 = df['SMA_20'].iloc[-1]
        sma_50 = df['SMA_50'].iloc[-1]
        
        trend_score = 0
        if current_price > sma_20: trend_score += 1
        if current_price > sma_50: trend_score += 1
        if sma_20 > sma_50: trend_score += 1
        
        return {
            'score': trend_score,
            'strength': trend_score / 3,
            'direction': 'bullish' if trend_score >= 2 else 'bearish'
        }
    
    @staticmethod
    def _analyze_momentum(df: pd.DataFrame) -> Dict:
        rsi = df['RSI'].iloc[-1]
        macd = df['MACD'].iloc[-1]
        signal = df['Signal'].iloc[-1]
        
        momentum_score = 0
        if 40 <= rsi <= 60: momentum_score += 1
        if rsi > 60: momentum_score += 2
        if macd > signal: momentum_score += 1
        
        return {
            'score': momentum_score,
            'strength': momentum_score / 4,
            'rsi_signal': 'overbought' if rsi > 70 else 'oversold' if rsi < 30 else 'neutral'
        }
    
    @staticmethod
    def _analyze_volatility(df: pd.DataFrame) -> Dict:
        volatility = df['Close'].pct_change().std() * np.sqrt(252)
        return {
            'annual_volatility': volatility,
            'risk_level': 'high' if volatility > 0.3 else 'medium' if volatility > 0.15 else 'low'
        }
    
    @staticmethod
    def _find_support_resistance(df: pd.DataFrame) -> Dict:
        prices = df['Close'].values
        resistance = max(prices[-20:])
        support = min(prices[-20:])
        return {'support': support, 'resistance': resistance}

class FundamentalAnalysis:
    @staticmethod
    def get_fundamentals(ticker: str) -> Dict:
        stock = yf.Ticker(ticker)
        info = stock.info
        
        return {
            'pe_ratio': info.get('forwardPE', 0),
            'peg_ratio': info.get('pegRatio', 0),
            'debt_to_equity': info.get('debtToEquity', 0),
            'current_ratio': info.get('currentRatio', 0),
            'profit_margins': info.get('profitMargins', 0),
            'return_on_equity': info.get('returnOnEquity', 0),
            'revenue_growth': info.get('revenueGrowth', 0)
        }

class StockAnalyzer:
    def __init__(self):
        self.llm = OllamaAPI()
        self.llm_analyzer = LLMAnalysis(self.llm)

    def analyze_stocks(self, tickers: List[str]) -> Dict[str, Dict]:
        results = {}
        for ticker in tickers:
            try:
                analysis = self._analyze_single_stock(ticker)
                if analysis:
                    results[ticker] = analysis
            except Exception as e:
                print(f"Error analyzing {ticker}: {str(e)}")
        return results

    def _analyze_single_stock(self, ticker: str) -> Dict:
        try:
            stock = yf.Ticker(ticker)
            hist_data = stock.history(period="1y")
            current_price = hist_data['Close'].iloc[-1]
            
            print(f"Fetched data for {ticker} - Current Price: ${current_price:.2f}")
            
            tech_analysis = TechnicalAnalysis.calculate_indicators(hist_data)
            fundamentals = FundamentalAnalysis.get_fundamentals(ticker)
            llm_context = self.llm_analyzer.get_historical_context(ticker)
            
            base_confidence = self._calculate_base_confidence(tech_analysis, fundamentals)
            final_confidence = self._calculate_combined_confidence(
                base_confidence=base_confidence,
                llm_context=llm_context
            )
            
            recommendation = self._generate_recommendation(
                ticker=ticker,
                current_price=current_price,
                tech_analysis=tech_analysis,
                fundamentals=fundamentals,
                llm_context=llm_context,
                confidence=final_confidence
            )
            
            return {
                'recommendation': recommendation,
                'confidence': final_confidence,
                'technical_analysis': tech_analysis,
                'fundamentals': fundamentals,
                'current_price': current_price,
                'historical_context': llm_context
            }
            
        except Exception as e:
            print(f"Error analyzing {ticker}: {str(e)}")
            return None

    def _calculate_base_confidence(self, tech_analysis: Dict, fundamentals: Dict) -> float:
        technical_score = (
            tech_analysis['trend']['strength'] * 0.4 +
            tech_analysis['momentum']['strength'] * 0.3
        )
        
        fundamental_score = 0
        if fundamentals['pe_ratio'] > 0:
            fundamental_score += 0.2
        if fundamentals['profit_margins'] > 0:
            fundamental_score += 0.2
        if fundamentals['revenue_growth'] > 0:
            fundamental_score += 0.2
        
        return round((technical_score * 0.6) + (fundamental_score * 0.4), 2)

    def _calculate_combined_confidence(self, base_confidence: float, 
                                     llm_context: Dict) -> float:
        return round(
            0.7 * base_confidence + 
            0.3 * llm_context['context_score'] * llm_context['confidence'],
            2
        )

    def _generate_recommendation(self, ticker: str, current_price: float,
                               tech_analysis: Dict, fundamentals: Dict,
                               llm_context: Dict, confidence: float) -> str:
        context = f"""
        Analyze {ticker} with:
        Current Price: ${current_price:.2f}
        Technical: Trend {tech_analysis['trend']['direction']}, RSI {tech_analysis['momentum']['rsi_signal']}
        Fundamentals: PE {fundamentals['pe_ratio']:.2f}, Growth {fundamentals['revenue_growth']:.2%}
        Historical Context: {llm_context['key_insights']}
        Overall Confidence: {confidence:.2%}
        
        Provide a concise trading recommendation considering all factors.
        """
        
        response = self.llm.generate([{"role": "user", "content": context}])
        return response

def print_analysis(ticker: str, analysis: Dict):
    print(f"\n=== {ticker} Analysis ===")
    print(f"Current Price: ${analysis['current_price']:.2f}")
    print(f"Recommendation: {analysis['recommendation']}")
    print(f"Confidence: {analysis['confidence']*100:.1f}%")
    
    print(f"\nTechnical Signals:")
    print(f"- Trend: {analysis['technical_analysis']['trend']['direction']}")
    print(f"- RSI: {analysis['technical_analysis']['momentum']['rsi_signal']}")
    print(f"- Volatility: {analysis['technical_analysis']['volatility']['risk_level']}")
    
    print("\nFundamental Metrics:")
    print(f"- P/E Ratio: {analysis['fundamentals']['pe_ratio']:.2f}")
    print(f"- Revenue Growth: {analysis['fundamentals']['revenue_growth']:.2%}")
    
    print("\nHistorical Context:")
    print(f"- Score: {analysis['historical_context']['context_score']:.2f}")
    print(f"- Key Insights: {analysis['historical_context']['key_insights']}")

def read_tickers_from_file(file_path: str) -> list:
    with open(file_path, 'r') as f:
        return [line.strip() for line in f if line.strip()]

def main():
    parser = argparse.ArgumentParser(description='Stock Analysis Tool')
    group = parser.add_mutually_exclusive_group()
    group.add_argument('-t', '--tickers', help='Comma-separated list of stock tickers (e.g., AAPL,MSFT,GOOGL)')
    group.add_argument('-f', '--file', help='Path to file containing stock tickers (one per line)')
    args = parser.parse_args()

    if not (args.tickers or args.file):
        print("Enter stock tickers (comma-separated, e.g., AAPL,MSFT,GOOGL):")
        tickers = input().strip().split(',')
    else:
        tickers = args.tickers.split(',') if args.tickers else read_tickers_from_file(args.file)

    analyzer = StockAnalyzer()
    results = analyzer.analyze_stocks(tickers)
    
    for ticker, analysis in results.items():
        print_analysis(ticker, analysis)

if __name__ == "__main__":
    main()
