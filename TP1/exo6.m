function [resultat1, resultat2] = doexo6(filepath)
  M1 = imread(filepath)
  M1_IG = rgb2gray(M1)
  M1_size = size(M1)
  M1_ligne = M1_size(1,1)
  M1_colonne = M1_size(1,2)
  disp(M1_ligne)
  disp(M1_colonne)
endfunction
