import numpy as np
from PIL import Image
from numpy import ndarray

img = Image.open('cat.jpg')

# get the image as a matrix
img_m = np.asarray(img, dtype="int32")

# perform the SVD on the image
U, S, V = np.linalg.svd(img_m, full_matrices = True)
S = np.diag(S) # make S a diagonal matrix

u_size = np.shape(U)
s_size = np.shape(S)
v_size = np.shape(V)
print('U is:', u_size, '\nS is:',s_size, '\nV is:', v_size)

# make S the correct dimensions (706, 480)
S_new = np.zeros((706, 480))
S_new[:480, :480] = S

a = U @ S_new @ V
print(np.isclose(a, img_m))
