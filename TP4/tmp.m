
'
function[Is] = seuillage(I,n)
  [nblig,nbcol] = size(I)
  for lig=1:nblig
    for col=1:nbcol
      for classe = 0:n-1
        if(I(lig,col)>=classe*255/n && I(lig,col)<(classe+1)*255/n)
          Is(lig,col)=classe
        endif
      endfor
    endfor
  endfor
endfunction
'
'
function[result] = seuillage(I0,S)
I0_size = size(I0);
S_size = size(S);
result = I0
for y = 0:1:I0_size(1)
   for x = 0:1:I0_size(2)
     nearest = S(1)
     for z = 0:1:S_size(2)
       if abs(S(z)-I0(x,y))<nearest
        nearest = S(z)
       end  
     end 
     result(X,Y)=nearest  
   end
end
endfunction
'

I0 = imread('./images_TP4/coins.png')

lvl = graythresh(I0);
I2 = im2bw(I0,lvl);

figure;imshow(I2);

I3 = imfill(I2,"holes");

figure;imshow(I3);

[L, NUM] = bwlabel(I3)
