%% Escalamiento
clc; clearvars; close all;
img = (rgb2gray(imread('coffee.jpg')));
img2 = img.*0.5;
figure(); imshow(img2, []);
%% Operador LOG para detectar bordes
clc; clearvars; close all;
img = double(rgb2gray(imread("car.jpg")));
h1 = fspecial('gaussian', 11, 5);
figure(); plot(h1);
h2 = fspecial('gaussian', 11, 0.2);
hr = h1-h2;
imLOG = imfilter(img, hr);
figure(); imshow(uint8(imLOG), []);