clc; clearvars; close all;
im1 = rgb2gray(imread("photo1.jpeg"));
k = ones(3);
%medidana y promedio
% k = k/9;
%figure(); k3d = surf(k);
%imF = imfilter(im1,k);
%figure(); imshow(uint8(im1)); title("original");
%figure(); imshow(imF, []);
%imFM = medfilt2(im1,[5,5]);
%figure(); imshow(imFM); title("mediana");

gF = fspecial('gaussian', 5, 0.25);
%figure(); plot(gF);
%figure(); surf(gF);

imG = imgaussfilt(im1, 3, 'FilterSize',5);
figure(); imshow(imG, [])