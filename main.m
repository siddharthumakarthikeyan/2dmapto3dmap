clc
clear all
close all

a = imread('example1.png');
b = a(:,:,1);
imfinfo('example1.png'); 
[row,col]=find(b==0);
for i = 1:length(col)
    Black_cord(i,1) = row(i);
    Black_cord(i,2) = col(i);
    Black_cord(i,3) = 0; 
end

for i = 1:length(col)
    Black_cordtr(i,1) = row(i);
    Black_cordtr(i,2) = col(i);
    Black_cordtr(i,3) = 5;
end


for i = 1:length(col)
    plot(Black_cord(i,1),Black_cord(i,2),'.')
    hold on
end