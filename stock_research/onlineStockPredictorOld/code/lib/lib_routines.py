import numpy as np
from tqdm import tqdm_notebook

def build_timeseries(mat, num_steps, y_col_index, TIME_STEPS):
    # y_col_index is the index of column that would act as output column
    # total number of time-series samples would be len(mat) - TIME_STEPS
    dim_0 = mat.shape[0] - TIME_STEPS
    dim_1 = mat.shape[1]
    x = np.zeros((dim_0, TIME_STEPS, dim_1))
    y = np.zeros((dim_0,num_steps))
    #print(y.shape)
    #print(mat[TIME_STEPS+1:TIME_STEPS+1+num_steps, y_col_index].reshape(1,num_steps).shape)
    
    for i in tqdm_notebook(range(dim_0-num_steps)):
        x[i] = mat[i:TIME_STEPS+i]
        y[i] = mat[TIME_STEPS+i:TIME_STEPS+i+num_steps, y_col_index].reshape(num_steps,)
    #print("length of time-series i/o",x.shape,y.shape)
    return x, y

def trim_dataset(mat, batch_size):
    """
    trims dataset to a size that's divisible by BATCH_SIZE
    """
    no_of_rows_drop = mat.shape[0]%batch_size
    if(no_of_rows_drop > 0):
        return mat[:-no_of_rows_drop]
    else:
        return mat