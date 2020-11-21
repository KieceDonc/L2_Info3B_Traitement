Icercle = imread('images_TP3/circles.png')

square = strel('square',13)
disk = strel('disk',15,0)
line = strel ('line', 10, 45)
rectangle = strel('rectangle',[5,15])

IOS = imopen(Icercle,square)
IOD = imopen(Icercle,disk)
IOL = imopen(Icercle,line)
IOR = imopen(Icercle,rectangle)

figure;imshow(IOS)
figure;imshow(IOD)
figure;imshow(IOL)
figure;imshow(IOR)

ICS = imclose(Icercle,square)
ICD = imclose(Icercle,disk)
ICL = imclose(Icercle,line)
ICR = imclose(Icercle,rectangle)

figure;imshow(ICS)
figure;imshow(ICD)
figure;imshow(ICL)
figure;imshow(ICR)