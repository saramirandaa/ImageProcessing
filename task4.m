clc;
clear vars;
    %Elige una imagen y conviertela en escala de grises
A = imread("fruit.jpg");
B = rgb2gray(A);
figure(); imshow(B);
B = double(B);
    %Aplica la funcion Gamma 3 veces
gamma1 = (B/255).^(1/0.09)*255;
figure(); imshow(gamma1);
gamma2 = (B/255).^(1/0.2)*255;
figure(); imshow(gamma2);
gamma3 = (B/255).^(1/0.5)*255;
figure(); imshow(gamma3);
    %Aplica la funcion gamma con una imagen de color
R = double(A(:,:,1));
G = double(A(:,:,2));
B = double(A(:,:,3));
R = (R/255).^(1/0.1)*255;
G = (G/255).^(1/0.1)*255;
B = (B/255).^(1/0.1)*255;
color1 = cat(3,R,G,B);
figure(); imshow(color1);
    %Repite el proceso con 3 valores diferentes para gamma
A = double(A);
gamma4 = (A/255).^(1/0.07)*255;
figure(); imshow(gamma4);
gamma5 = (A/255).^(1/0.7)*255;
figure(); imshow(gamma5);
gamma6 = (A/255).^(1/0.7)*255;
figure(); imshow(gamma6);