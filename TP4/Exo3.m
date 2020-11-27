A = imread('./images_TP4/coins.png')
A = double(A)/255;
level = graythresh(A);
B = im2bw(A,level)
C = imfill(B,'holes')
D = bwlabel(C,8) 
nb_piece = max(D(:));
STATS = regionprops(D,"Centroid","EquivDiameter","area")
STATS(1).area # donne l'aire de la première région
STATS(1).area # donne le centre de la première région
# etc etc etc 


[m,n] = size(A)
A2 = zeros(m,n)
for i=1:nb_piece
  area(i)=STAT(i).Area
endfor

[X,I] = sort(area)

for i=1:4
  A2 (D==I(i))==1;
endfor

figure; imshow(A)