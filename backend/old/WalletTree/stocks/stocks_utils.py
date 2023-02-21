import yfinance as yf
import requests

# stock symbol for dev tests
stock_symbol = "AAPL"

def makeYFinRequest(ticker):
    response = yf.Ticker(ticker)
    return response


def getPositionUpdates(period, interval):
    response = makeYFinRequest(stock_symbol).history(period=period, interval=interval).Close
    return response


def getPositionInfo():
    response = makeYFinRequest(stock_symbol).info
    return response


print(getPositionUpdates("1y", "1d"))