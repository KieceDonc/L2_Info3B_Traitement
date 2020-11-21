I = imread('./images_TP3/frog.jpeg')
I = rgb2gray(I)
I = double(I)/255

Sobel = [-1,0,1;-2,0,2;-1,0,1]
Laplace = [0,1,0;1,-4,1;0,1,0]
Roberts = [1,1,1;0,0,0;-1,-1,-1]

I_s = filter2(Sobel,I)
I_l = filter2(Laplace,I)
I_r = filter2(Roberts,I)

figure;imshow(I_s)
figure;imshow(I_l)
figure;imshow(I_r)

Kx = (1/9)*[-3,-3,5;-3,0,5;-3,-3,5]
Ky = [-3,-3,-3;-3,0,-3;5,5,5]

I_Kx = filter2(Kx,I)
I_Ky = filter2(Ky,I)

figure;imshow(I_Kx)
figure;imshow(I_Ky)

I3 = sqrt(I_Kx.*I_Kx+I_Ky.*I_Ky)
Iseuil = I3/max(I3(:))
Iseuil = im2bw(Iseuil,0.12);

figure;imshow(I3)
figure;imshow(Iseuil)

