import os 
import argparse
from keras.models import load_model
from keras.utils import plot_model

def arg_setting(): 
    dir_path = os.path.dirname(os.path.realpath(__file__))
    parser = argparse.ArgumentParser(description='Use trained LSTM model to predict stock prices')
    parser.add_argument(
        '-p',
        '--modelpath',
        default=os.path.join(dir_path,'/models/latest_model.h5'),
        help='File path for Keras model (string), default=\"models/latest_model.h5\"'
    )

    cmd_args = parser.parse_args()
    model_path = str(cmd_args.modelpath)

    return model_path

def load_lstm_model(path):
    dir_path = os.path.dirname(os.path.realpath(__file__))
    full_model_path = os.path.join(dir_path, path)
    model = load_model(full_model_path)

    return model

def main():
    model_path = arg_setting()
    print(model_path)
    model = load_lstm_model(model_path)
    plot_model(model, to_file='/tmp/model.png')

if __name__ == '__main__':
    main()

