% NOTE
% Make sure your matlab is running in the same folder this file is located
% check the file explorer bar above

% CHALLENGE
% This only works on a 2D image (aka grayscale)
% Color gets more complex, treat it like a challenge problem! (One approach
% would be to seperate the different channels)

% RESOURCES
% Understand more about im2double here: https://www.mathworks.com/help/matlab/ref/im2double.html
% Understand more about svd here: https://www.mathworks.com/help/matlab/ref/double.svd.html?searchHighlight=svd&s_tid=doc_srchtitle

%===========================================================================================
%===========================================================================================
%===========================================================================================

clear; % clears the memory

img = imread('cat.jpg');  % load the image into matlab
img_double = im2double(img); % converts the image to double precision

[U,S,V] = svd(img_double); % performing svd on the image matrix to find U, S, and V

rank = 10; % CHANGE THIS VALUE TO CHANGE COMPRESSION
L = U(:,1:rank) * S(1:rank, 1:rank) * V(:, 1:rank)'; % only look at the columns up to rank

colormap('gray') % change the image appearence when drawing to gray

subplot(211) 
imagesc(img) % original image

subplot(212)
imagesc(L) % compressed image
