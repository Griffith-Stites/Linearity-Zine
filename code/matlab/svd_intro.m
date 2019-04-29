A = [1 2 3; 4 5 6] % define a matrix A
[U,S,V] = svd(A) % performing svd on matrix A to find U, S, and V

U*S*V'% multiply U by S by the conm

% Learn more about ctranspose here: 
% https://www.mathworks.com/help/matlab/ref/ctranspose.html