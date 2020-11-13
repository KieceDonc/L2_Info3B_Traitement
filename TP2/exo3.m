I1 = imread('./images_TP2/house.jpg')

I1 = double(I1)/255
f1 = ones(3,3)/9
f2 = [-1,-1,-1;-1,8,-1;-1,-1,-1]
f3 = [-1,-1,-1;-1,9,-1;-1,-1,-1]
I1f1 = filter2(f1,I1)
I1f2 = filter2(f2,I1)
I1f3 = filter2(f3,I1)

figure;imshow(I1f1)
figure;imshow(I1f2)
figure;imshow(I1f3)

f12 = ones(7,7)/49
f13 = ones(7,7)/25
f14 = ones(7,7)/65
I1f12 = filter2(f12,I1)
I1f13 = filter2(f13,I1)
I1f14 = filter2(f14,I1)
figure;imshow(I1f12)
figure;imshow(I1f13)
figure;imshow(I1f14)