img = rgb2gray(imread("puppy.jpg"));

h1 = fspecial("gaussian", 5, 4);
h2 = fspecial("gaussian", 5, 0.4);
hr = (h1-h2);
LOGimg = imfilter(img,hr);
figure(); imshow(LOGimg, []);