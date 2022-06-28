%%
clc;
clearvars;
close all;
%% 
original = imread("sarayleal.jpeg");
original = (rgb2gray(original));

imGauss = imnoise(original, "gaussian");
imSP = imnoise(original, "salt & pepper");
imPoi = imnoise(original, "poisson");
imSpk = imnoise(original, "speckle");
%uno(original);
figure("Name","Sobel"); 
uno(imGauss, "Gaussiano", 1);
uno(imSP, "Salt&Pepper", 2);
uno(imPoi, "Poisson", 3);
uno(imSpk, "Speckle", 4);
figure("Name", "Filtros");
function uno = uno(img, titulo, num);
    sobel1 = edge(img, 'sobel');
    %imshow(sobel1);
    subplot(2,2,num); imshow(sobel1); title(titulo);
    dos(img, titulo, num);
end

function dos = dos(img2, titulo, num);
    k = ones(3); k = k/3;
    prom = imfilter(img2,k);
    med = medfilt2(img2, [3,3]);
    gauss = imgaussfilt(img2, 2, 'FilterSize', 5);
    subplot(2,2,num); imshow(prom); title(titulo);
    subplot(2,2,num); imshow(med); title(titulo);
    subplot(2,2,num); imshow(gauss); title(titulo);
end

