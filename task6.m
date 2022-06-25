clc; clearvars; close all;

%Elige una imagen y aplica diferentes umbrales
A = imread("puppy.jpg");
B = rgb2gray(A);

U = zeros(size(B));
U(B<100) = 1;
figure(); imshow(U);
U2 = zeros(size(B));
U2((B>50)&(B<60)) = 1;
figure(); imshow(U2);
U3 = zeros(size(B));
U3(B>100) = 1;
figure(); imshow(U3);

%Utiliza imtool y ajusta los valores de contraste
clc; clearvars; close all;
A = imread("coffee.jpg");
A = rgb2gray(A);
figure(); imshow(A);
imtool(A);

%Implementa la técnica contrast stretching 
contrast_img = (255/128)*(A-18);
figure(); imshow(contrast_img);

%Aplica equalización del histograma a alguna de tus imágenes
imEq = histeq(A);
figure(); imshow(imEq);

