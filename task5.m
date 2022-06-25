clc; clear vars; 

A1 = imread("bags.jpg");
A2 = imread("whiteflowers.jpg");
A3 = imread("puppy.jpg");
C1 = rgb2gray(A1);
C2 = rgb2gray(A2);
C3 = rgb2gray(A3);

figure(); h1 = histogram(C1);
figure(); h2 = histogram(C2);
figure(); h3 = histogram(C3);
C1 = double(C1);
gamma1 = (C1/255).^(1/0.15)*255;
gamma2 = (C1/255).^(1/0.20)*255;
gamma3 = (C1/255).^(1/0.50)*255;

figure(); h4 = histogram(gamma3);
figure(); h5 = histogram(gamma2);
figure(); h6 = histogram(gamma3);
