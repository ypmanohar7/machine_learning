clear ; close all; clc


load('ex6data3.mat');

% Try different SVM Parameters here
[C, sigma] = dataset3Params(X, y, Xval, yval);
C
sigma
% Train the SVM
fprintf('Your are about to use the optimal c and sigma\n');
model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
fprintf('Your are about to vizualize Boundary\n');
visualizeBoundary(X, y, model);