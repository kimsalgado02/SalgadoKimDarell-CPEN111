clc;
clf;
clear all;
close all;
pkg load image;

image_1=imread('C:\Users\User\Downloads\fruits.png'); %use fruits.png images come from the download directory.
imfinfo('C:\Users\User\Downloads\fruits.png') % show info files in a target images.
subplot(1,3,1),imshow(image_1),title('original image');%print original image.

reducedimage=imresize(imresize(image_1,1/8),2); % increase image size using imresize plugin.
imwrite(reducedimage,'fruits2.png');
image_2=('fruits2.png');
subplot(1,3,2),imshow(image_2),title('Reduce the spatial resolution  image'); %print decrease resolution image.

hsv_img = rgb2hsv(image_1); %convert images rgb to hsv images using rgb2hsv from image package;
imwrite(hsv_img,'fruits3.png');
image_3=('fruits3.png');
subplot(1,3,3),imshow(image_3),title('rgb to hsv image'); %print hsv image.
