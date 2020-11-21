I1 = imread('./images_TP2/house_gaus.bmp')

I1 = double(I1)/255
f1 = ones(3,3)/9
I1f1 = filter2(f1,I1)
I1median = median(I1,3)

figure;imshow(I1f1)
figure;imshow(I1median)