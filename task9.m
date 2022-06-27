clc; clearvars; close all;
original = rgb2gray(imread("car.jpg"));
imGauss = imnoise(original, "gaussian");
figure(); imshow(original); title("Original");
figure(); imshow(imGauss); title("Gaussian");

Mediana = medfilt2(imGauss, [3,3]);
figure(); imshow(Mediana, []); title("Mediana");

imGauss = double(imGauss);
k = ones(3); k = k/9;
Promedio = imfilter(imGauss, k);
figure(); imshow(Promedio, []); title("Promedio");

Gaussian = imgaussfilt(imGauss, 5, 'FilterSize', 9);
figure(); imshow(Gaussian, []); title("Gauss");
%%
clc; clearvars; close all;
original = rgb2gray(imread("car.jpg"));
imSP = imnoise(original, "salt & pepper");
figure(); imshow(original); title("Original");
figure(); imshow(imSP); title("Salt and Pepper");

Mediana = medfilt2(imSP, [3,3]);
figure(); imshow(Mediana, []); title("Mediana");

imSP = double(imSP);
k = ones(3); k = k/9;
Promedio = imfilter(imSP, k);
figure(); imshow(Promedio, []); title("Promedio");

Gaussian = imgaussfilt(imSP, 2, 'FilterSize', 3);
figure(); imshow(Gaussian, []); title("Gauss");
%%
clc; clearvars; close all;
original = rgb2gray(imread("car.jpg"));
imPoi = imnoise(original, "poisson");
figure(); imshow(original); title("Original");
figure(); imshow(imPoi); title("Poisson");

Mediana = medfilt2(imPoi, [3,3]);
figure(); imshow(Mediana, []); title("Mediana");

imPoi = double(imPoi);
k = ones(3); k = k/9;
Promedio = imfilter(imPoi, k);
figure(); imshow(Promedio, []); title("Promedio");

Gaussian = imgaussfilt(imPoi, 2, 'FilterSize', 3);
figure(); imshow(Gaussian, []); title("Gauss");
%%
clc; clearvars; close all;
original = rgb2gray(imread("car.jpg"));
imSpk = imnoise(original, "speckle");
figure(); imshow(original); title("Original");
figure(); imshow(imSpk); title("Multiplicativo");

Mediana = medfilt2(imSpk, [3,3]);
figure(); imshow(Mediana, []); title("Mediana");

imSpk = double(imSpk);
k = ones(3); k = k/9;
Promedio = imfilter(imSpk, k);
figure(); imshow(Promedio, []); title("Promedio");

Gaussian = imgaussfilt(imSpk, 2, 'FilterSize', 3);
figure(); imshow(Gaussian, []); title("Gauss");
