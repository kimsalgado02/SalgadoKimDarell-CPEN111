clc;
clf;
clear all;
close all;
pkg load image;

#a a.	Using the Editor of Octave, create a program that will load and display parrots.jpg
image_1=imread('parrots.jpg');

#b b.	Examine the size of the parrots by typing whos to find out the size of the image that you have read in
whos image_1

# c and d
image_gray=rgb2gray(image_1);
subplot(1,2,1),imshow(image_1),title('original image');%print original image.
subplot(1,2,2),imshow(image_gray),title('converted gray  image');%print gray image.
