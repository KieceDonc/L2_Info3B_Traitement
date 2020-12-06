I0 = imread("./images_tp_note/piscine.png")

#[lig,col,compo] = size(I0)
#disp(lig)
#disp(col)
#disp(compo)

#I0_R = I0(:,:,1)
#I0_G = I0(:,:,2)
I0_B = I0(:,:,3)

#figure;imshow(I0_R)
#figure;imshow(I0_G)
#figure;imshow(I0_B)

I2 = double(I0_B)/255
I2_hist = hist(I2)
figure;bar(I2_hist)

I2_max = max(I2_hist)
I2_min = min(I2_min)
Ietir = (I2-I2_min)/(I2_max-I2_min)
figure;imshow(Ietir)

SE = strel("disk",10)

I3 = imclose(I2,SE)