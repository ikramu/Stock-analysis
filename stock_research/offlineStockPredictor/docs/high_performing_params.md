### H&M (minute data)

1. For predicting next minute (`p=0`) stock price:
`python3 hm_train_lstm_generic.py -p 0 -s HM-B.ST -n 1 -b 100 -t 60 -e 120`

2. For predicting 2nd next minute (`p=1`) stock price:
`python3 hm_train_lstm_generic.py -p 1 -s HM-B.ST -n 1 -b 100 -t 90 -e 120`