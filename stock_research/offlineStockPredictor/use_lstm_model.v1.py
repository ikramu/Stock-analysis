import os 
import argparse
import numpy as np 
from keras.models import load_model
from keras.utils import plot_model
from sklearn.externals import joblib
from matplotlib import pyplot as plt

def arg_setting(): 
    dir_path = os.path.dirname(os.path.realpath(__file__))
    parser = argparse.ArgumentParser(description='Use trained LSTM model to predict stock prices')
    parser.add_argument(
        '-p',
        '--modelpath',
        default='/example_data/example.h5',
        help='File path for Keras model (string), default=\"models/example.h5\"'
    )
    parser.add_argument(
        '-d',
        '--datadir',
        default='/example_data/',
        help='Directory containing pickle files (string), default=\"/example_data/\"'
    )
    parser.add_argument(
        '-b',
        '--batchsize',
        default='60',
        help='File path for Keras model (int), default=60'
    )
    parser.add_argument(
        '-s',
        '--minmaxscaler',
        default='example_data/min_max_scaler.pkl',
        help='File path for Keras model (string), default=\"example_data/min_max_scaler.pkl\"'
    )

    cmd_args = parser.parse_args()
    model_path = dir_path + "/" + str(cmd_args.modelpath)
    batch_size = int(cmd_args.batchsize)
    min_max_scaler = dir_path + "/" + str(cmd_args.minmaxscaler)
    data_dir = dir_path + "/" + str(cmd_args.datadir)

    return model_path, data_dir, batch_size, min_max_scaler

def load_lstm_model(path):
    dir_path = os.path.dirname(os.path.realpath(__file__))
    full_model_path = os.path.join(dir_path, path)
    model = load_model(full_model_path)

    return model

def trim_dataset(mat, batch_size):
    """
    trims dataset to a size that's divisible by BATCH_SIZE
    """
    no_of_rows_drop = mat.shape[0]%batch_size
    if(no_of_rows_drop > 0):
        return mat[:-no_of_rows_drop]
    else:
        return mat

def make_predictions(model, data_dir):
    batch_size = model.layers[0].input_shape[0]
    x_valid = np.load(os.path.join(data_dir,'x_ts.npy'))
    x_valid = trim_dataset(x_valid, batch_size)
    real = np.load(os.path.join(data_dir,'y_ts.npy'))
    real = trim_dataset(real, batch_size)
    pred = model.predict(x_valid, batch_size=batch_size)
    
    return real, pred

def rescale_values(arr, min_max_scaler):
    # Predicted column is the first one in data, i.e., 0
    arr_orig = (arr * min_max_scaler.data_range_[0]) + min_max_scaler.data_min_[0] 
    
    return arr_orig

def get_valid_test_data(data_dir):
    print('To be implemented')

def plot_real_vs_pred(real_val, pred_val, num_points = 60):
    real_vec = real_val[:num_points,0]
    pred_vec = pred_val[:num_points,0]
    pred_val = pred_val[:num_points,]
    plt.plot(real_vec, color = 'g', label='Real')
    plt.plot(pred_vec, color = 'b', label='Pred 1 value')
    for i in range(pred_val.shape[0]):
        plt.plot(range(i,i+3), pred_val[i,:3], color='r')
        
    plt.show()

def main():
    model_path, data_dir, batch_size, min_max_scaler = arg_setting()
    scaler = joblib.load(min_max_scaler) 

    model = load_lstm_model(model_path)
    for layer in model.layers: 
        print(layer.get_config(), layer.get_weights())
    #plot_model(model, to_file='/tmp/model.png')
    print(model.summary())
    real, pred = make_predictions(model, data_dir)

    real_val = rescale_values(real, scaler)
    pred_val = rescale_values(pred, scaler)
    
    print('Plotting the prediction vs real')
    plot_real_vs_pred(real_val, pred_val)
    print('Program completed...')

if __name__ == '__main__':
    main()

