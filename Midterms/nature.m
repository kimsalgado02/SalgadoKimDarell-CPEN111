clc;
clf;
clear all;
close all;
pkg load image;

image_2=imread('nature.jpg');
whos image_2
#convert original image to red image.
img_red=image_2;
img_red(:,:,2)=0;
img_red(:,:,3)=0;

#convert original image to green image.
img_green=image_2;
img_green(:,:,1)=0;
img_green(:,:,3)=0;

#convert original image to blue image.
img_blue=image_2;
img_blue(:,:,1)=0;
img_blue(:,:,2)=0;

#convert jpg image to png image.
imwrite(image_2,'nature.png');
imwrite(img_red,'nature_red.png');
imwrite(img_green,'nature_green.png');
imwrite(img_blue,'nature_blue.png');

subplot(2,2,1),imshow(image_2),title('original image');%print original image.
subplot(2,2,2),imshow(img_red),title('red  image');%print gray image.
subplot(2,2,3),imshow(img_green),title('green image');%print gray image.
subplot(2,2,4),imshow(img_blue),title('blue image');%print gray image.
