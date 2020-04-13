# dashboard.py
from qtpylib.reports import Reports

class Dashboard(Reports):
    pass # we just need the name

if __name__ == "__main__":
    dashboard = Dashboard(port = 5000)
    dashboard.run()
x
