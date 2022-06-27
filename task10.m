clc; clearvars; close all;

objeto = imread("objeto.jpg");
exterior = imread("exterior.jpg");
interior = imread("interior.jpeg");

derivadas(objeto);
derivadas(exterior);
derivadas(interior);

function derivadas = derivadas(im)
    figure("Name","Objeto");
    im = rgb2gray(im);

    %subplot(2,2,1); 
    imshow(im); title("Original");
    filt1 = edge(im, 'sobel');

    k1 = [0,-1,0;-1,4,-1;0,-1,0];
    filt2 = imfilter(im, k1);

    k2 = [-1 -1 -1; -1 8 -1; -1 -1 -1];
    filt3 = imfilter(im, k2);

    %subplot(2,2,2); 
    figure();
    imshow(filt1); title('Sobel');
    %subplot(2,2,3); 
    figure();
    imshow(filt2); title('Laplace');
    %subplot(2,2,4); 
    figure();
    imshow(filt3); title('Laplace Diagonial');

end

