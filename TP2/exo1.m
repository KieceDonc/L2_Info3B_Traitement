I = imread('./images_TP2/image2.bmp')
[m,n,p] = size(I);
if(p>1)
  i=rgb2gray(I)
end
I = double(I)
I= I/255
[Ietir] = etir_hist(I)
Ieq=histeq(I)
Iteri = Ietir*255
bar(Ietir)