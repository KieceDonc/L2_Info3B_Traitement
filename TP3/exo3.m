function [nb_occ]=ocurrence(fichier,element);
  I = imread(fichier)
  imshow(I)
  Ie = imerode(I,element)
  figure, imshow(Ie)
  [X,Y] = find(Ie==1]
  nb_occ=size(X)
endfunction
#E = [1,1,1;1,0,0;1,1,0;1,0,0;1,1,1;]   
#nb=occur('images_TP3\image_bin.bmp',E)