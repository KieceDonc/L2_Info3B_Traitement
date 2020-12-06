I0 = imread('./images_tp_note/toit.jpg')

[lig,col] = size(I0)
lig = lig/3
col = col/3
I1 = 0

for x = 1:lig
  for y = 1:col
    tmpx= x*3
    tmpy= y*3
    I1(x,y)=I0(tmpx,tmpy)
  endfor
endfor

I1(1,1)=I0(1,1)

figure;imshow(I1)