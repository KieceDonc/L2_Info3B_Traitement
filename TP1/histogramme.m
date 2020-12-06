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
  bar(H)
endfunction
