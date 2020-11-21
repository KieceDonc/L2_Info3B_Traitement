I = imread('./images_TP3/image_bin.bmp')

E = [
1,1,1;
1,0,0;
1,1,0;
1,0,0;
1,1,1;
]   
Ie = imerode(I,E)
figure;imshow(Ie)

H = [
1,0,1;
1,0,1;
1,1,1;
1,0,1;
1,0,1;
]
Ied = imdilate(Ie,H)
figure;imshow(Ied)