# Stock price prediction using LSTM
This mini-project contains the code for predicting stock prices using LSTM. The code expects minute-level data and can be customized to predict next $n$ values. Keep in mind that the model performance is considerably poor for larger $n$. I have used it on $n$ between 1 and 5.

## Usage

First install the required libraries as follows.

`pip install -r requirements.txt `

Try the HM model using following command

`python3 hm_train_lstm_first_min.py -s HM-B.ST -n 1 -b 100 -t 60 -e 100`

where

1. -s stock name (here HM-B.ST). For companies abbreviations, visit Yahoo Finance. Note that script assumes that data for the stock is availabe in `data` directory
2. -n how many steps to predict (here only the next minute)
3. -b batch size, i.e., to be used in model training)
4. -t time-steps, i.e., how many minutes of previous data will considered for prediction (here last 60 min)
5. -e No. of epochs for trainining the model
