function _histogramme(filepath)
  M1 = imread(filepath)
  figure(imshow(M1))
  M1_IG = rgb2gray(M1)
  figure(imshow(M1_IG))
  M1_size = size(M1)
  M1_ligne = M1_size(1,1)
  M1_colonne = M1_size(1,2)
  disp(M1_ligne)
  disp(M1_colonne)
endfunction

function histogramme(filepath)
  I = imread(filepath)
  figure;imshow(I)
  Ig = rgb2gray(I)
  figure;imshow(Ig)
  [n,m] = size(Ig)
  n
  m
  H = imhist(Ig)
  min(H)
  max(H)  
  figure;bar(H);
  
endfunction