clc; clearvars; close all;
    %Realiza la especificación del histograma de 3 imágenes
A1 = imread("bags.jpg");
A2 = imread("whiteflowers.jpg");
A3 = imread("fruit.jpg");
A4 = imread("photo1.jpeg");
    %figure(); h1 = histogram(A1); title("original");
    %figure(); h2 = histogram(A2); title("flores");
    %figure(); h3 = histogram(A3); title("fruta");
    %figure(); h4 = histogram(A4); title("yo");

IMH1 = imhistmatch(A2, A1);
figure(); imshow(IMH1);
IMH2 = imhistmatch(A3, A1);
figure(); imshow(IMH2);
IMH3 = imhistmatch(A4, A1);
figure(); imshow(IMH3);
    %figure(); h5 = histogram(IMH1); title("flores");
    %figure(); h6 = histogram(IMH2); title("fruta");
    %figure(); h7 = histogram(IMH3); title("yo");