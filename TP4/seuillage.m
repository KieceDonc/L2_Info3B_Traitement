I0 = imread('./images_TP4/Image1.bmp')
I1 = I0
[nblig,nbcol] = size(I0)
for lig=1:nblig
  for col=1:nbcol
    for classe = 0:n-1
      if(I(lig,col)>=classe*255/n && I(lig,col)<(classe+1)*255/n)
        I1(lig,col)=classe
      endif
    endfor
  endfor
endfor

figure;imshow(I1)

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