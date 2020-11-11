M1 = imread("./images_TP1/peppers.png")
M1_size = size(M1)
disp(M1_size)
M1_cmpt_pixels = M1_size(1,1)*M1_size(1,2)*M1_size(1,3);
disp(M1_cmpt_pixels)

M1_R = M1(:,:,1)
M1_G = M1(:,:,2)
M1_B = M1(:,:,3)

M1_GRIS = rgb2gray(M1)
imshow(M1_GRIS)

