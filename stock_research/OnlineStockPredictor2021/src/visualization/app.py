import dash
import dash_core_components as dcc 
import dash_html_components as html
import plotly.express as px 
import pandas as pd
import numpy as np

app = dash.Dash(__name__)
df = pd.DataFrame({'Var1': np.random.normal(5, 2, 200), 'Var2': np.random.normal(10, 7, 200)})

fig = px.scatter(df, x='Var1', y='Var2')

app.layout = html.Div(children = [
html.H1("First try in Dash"),
html.H3("""
This is my first application in Dash so stay tuned
"""),
dcc.Graph(id = 'scplot1', figure = fig)
])

#server = app.server

if __name__ == '__main__':
    app.run_server(host = '0.0.0.0', debug=True)