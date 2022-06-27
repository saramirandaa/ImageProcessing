
%% Fitlro Promedio 
clc; clearvars; close all;
baja = imread("coffee.jpg");
alta = imread("amigos.png");
baja = rgb2gray(baja); alta = rgb2gray(alta);
figure(); imshow(alta); title("Original1");
figure(); imshow(baja); title("Original2");

k1 = ones(3); k2 = ones(7); k3 = ones(11);
k1 = k1/9; k2 = k2/49; k3 = k3/121;

imF = imfilter(baja,k1); imF2 = imfilter(alta,k1);
figure(); imshow(imF, []); title("Kernel 3x3");
figure(); imshow(imF2, []); title("Kernel 3x3");
imF = imfilter(baja,k2); imF2 = imfilter(alta,k2);
figure(); imshow(imF, []); title("Kernel 7x7");
figure(); imshow(imF2, []); title("Kernel 7x7");
imF = imfilter(baja,k3); imF2 = imfilter(alta,k3);
figure(); imshow(imF, []); title("Kernel 11x11");
figure(); imshow(imF2, []); title("Kernel 11x11");

%% Filtro Mediana
clc; clearvars; close all;
baja = imread("coffee.jpg");
alta = imread("amigos.png");
baja = rgb2gray(baja); alta = rgb2gray(alta);
figure(); imshow(alta); title("Original1");
figure(); imshow(baja); title("Original2");

imFM1 = medfilt2(baja, [5,5]);
imFM2 = medfilt2(alta, [5,5]);
imFM3 = medfilt2(baja, [9,9]);
imFM4 = medfilt2(alta, [9,9]);
imFM5 = medfilt2(baja, [13,13]);
imFM6 = medfilt2(alta, [52,52]);

figure(); imshow(imFM1, []); title("BAJA 5x5");
figure(); imshow(imFM3, []); title("BAJA 9x9");
figure(); imshow(imFM5, []); title("BAJA 52x52");

figure(); imshow(imFM2, []); title("ALTA 5x5");
figure(); imshow(imFM4, []); title("ALTA 9x9");
figure(); imshow(imFM6, []); title("ALTA 52x52");

%% FILTRO GAUSSIANNO

clc; clearvars; close all;
baja = imread("coffee.jpg");
alta = imread("amigos.png");
baja = rgb2gray(baja); alta = rgb2gray(alta);
baja = double(baja); alta = double(alta);
figure(); imshow(uint8(baja)); title("Original2");

imG = imgaussfilt(baja, 2, 'FilterSize', 5);
imG2 = imgaussfilt(baja, 3, 'FilterSize', 7);
imG3 = imgaussfilt(baja, 8, 'FilterSize', 9);
figure(); imshow(imG, []); title('2 y 5x5');
figure(); imshow(imG2, []); title('3 y 7x7');
figure(); imshow(imG3, []); title('8 y 9x9');

figure(); imshow(uint8(alta)); title("Original1");

imG4 = imgaussfilt(alta, 10, 'FilterSize', 33);
imG5 = imgaussfilt(alta, 15, 'FilterSize', 77);
imG6 = imgaussfilt(alta, 45, 'FilterSize', 9);
figure(); imshow(imG4, []); title('10 y 33x33');
figure(); imshow(imG5, []); title('15 y 77x77');
figure(); imshow(imG6, []); title('80 y 9x9');

