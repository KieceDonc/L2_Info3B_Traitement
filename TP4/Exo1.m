load('I0.mat')

SE = strel('square',3)
I1 = imopen(I0,SE)
test = I1
while any(test(:))
  I2 = imdilate(I1,SE) 
  I3 = min(I2,I0)
  test = I3-I1
  I1=I3
  figure;imshow(I1)
end