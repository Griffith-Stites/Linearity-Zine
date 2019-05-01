import numpy as np
from numpy import ndarray

A = np.matrix('1 2 3; 4 5 6')

U, S, V = np.linalg.svd(A, full_matrices = True) # perform the SVD on A
S = np.diag(S) # make S a diagonal matrix

S_dim = S.shape # create a tuple of the dimensions
S_new = np.zeros((S_dim[0], S_dim[1]+1)) # matrix of zeros one more column than S
S_new[:,:-1] = S

print(U @ S_new @ V)
