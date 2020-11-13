I1 = imread('./images_TP2/house.jpg')
I1 = double(I1)/255
B = imnoise(I1,'salt & pepper')
figure;imshow(B)
B = imnoise(I1,'gaussian',-1,0);
figure;imshow(B)