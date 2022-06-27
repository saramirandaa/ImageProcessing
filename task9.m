clc; clearvars; close all;
original = rgb2gray(imread("spiderman.png"));
figure(); imshow(original); title("Original");

imGauss = imnoise(original, "gaussian");
figure(); imshow(imGauss); title("Gaussian");

Mediana = medfilt2(imGauss, [5,5]);
figure(); imshow(Mediana, []); title("Mediana");

imGauss = double(imGauss);
k = ones(5); k = k/25;
Promedio = imfilter(imGauss, k);
figure(); imshow(Promedio, []); title("Promedio");

Gaussian = imgaussfilt(imGauss, 2, 'FilterSize', 9);
figure(); imshow(Gaussian, []); title("Gauss");
%%
clc; clearvars; close all;
original = rgb2gray(imread("spiderman.png"));
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
original = rgb2gray(imread("spiderman.png"));
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
original = rgb2gray(imread("spiderman.png"));
imSpk = imnoise(original, "speckle");
figure(); imshow(original); title("Original");
figure(); imshow(imSpk); title("Multiplicativo");

Mediana = medfilt2(imSpk, [5,5]);
figure(); imshow(Mediana, []); title("Mediana");

imSpk = double(imSpk);
k = ones(5); k = k/25;
Promedio = imfilter(imSpk, k);
figure(); imshow(Promedio, []); title("Promedio");

Gaussian = imgaussfilt(imSpk, 3, 'FilterSize', 5);
figure(); imshow(Gaussian, []); title("Gauss");
