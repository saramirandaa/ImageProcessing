%% reset

clc;
clearvars;
close all;


%% Work
img = imread('sarayleal.jpeg');


noises(img);


function noises = noises(img);
    figure("Name","Img Con ruido");

    img = rgb2gray(img);

    subplot(2,3,1); imshow(img); title('Original');

    imGauss= imnoise(img,"gaussian");
    subplot(2,2,1); imshow(imGauss); title('Gaussiano');
    imSP= imnoise(img,"salt & pepper");
    subplot(2,2,2); imshow(imSP); title('Salt&Pepper');
    imPoisson = imnoise(img, "poisson");
    subplot(2,2,3); imshow(imPoisson); title('Poisson');
    imSpeckle = imnoise(img, "speckle");
    subplot(2,2,4); imshow(imSpeckle); title('Speckle');

    correct(imGauss, "Gauss");
    correct(imSP, "Salt&Pepper");
    correct(imPoisson, "Poisson");
    correct(imSpeckle, "Specke");

    correct2(imGauss, "Gauss");
    correct2(imSP, "Salt&Pepper");
    correct2(imPoisson, "Poisson");
    correct2(imSpeckle, "Speckle");

end

function correct = correct(img2, tit);
    figure('Name', 'Corregida y Sobel');

    KV = [-1 -2 -1, 0 0 0, 1 2 1];
    KH = KV';
    
    subplot(2,3,1); imshow(img2); title(tit);

    mediana = medfilt2(img2, [5,5]);
    subplot(2,3,2); imshow(mediana); title('Mediana Corregida');
    
    sobelVertical = imfilter(mediana, KV);
    subplot(2,3,3); imshow(sobelVertical); title('Mediana Vertical');
    

    sobelHorizontal = imfilter(mediana, KH);
    subplot(2,3,4); imshow(sobelHorizontal); title('Mediana Horizontal');

    combinado = (sobelVertical .*0.5) + (sobelHorizontal .*0.5);
    subplot(2,3,5); imshow(combinado); title('Mediana Combinada');
    



end

function correct2=correct2(img, tit);
    figure('Name','Ruido y Sobel');
    KV = [-1 -2 -1, 0 0 0, 1 2 1];
    KH = KV';
    
    subplot(2,2,1); imshow(img); title(tit);
    
    sobelVertical = imfilter(img, KV);
    subplot(2,2,2); imshow(sobelVertical); title('Mediana Vertical');
    

    sobelHorizontal = imfilter(img, KH);
    subplot(2,2,3); imshow(sobelHorizontal); title('Mediana Horizontal');

    combinado = (sobelVertical .*0.5) + (sobelHorizontal .*0.5);
    subplot(2,2,4); imshow(combinado); title('Mediana Combinada');
end