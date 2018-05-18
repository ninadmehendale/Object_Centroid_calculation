%   I = imread('ninad.jpg');
%   [x,y] = obj_centroid(I);
function [meanx,meany] = obj_centroid(pic)
[x,y,z] = size(pic);
if(z==1)
else
pic = rgb2gray(pic);
end
im = pic;
[rows,cols] = size(im);
x = ones(rows,1)*[1:cols];
y = [1:rows]'*ones(1,cols);
area = sum(sum(im));
meanx = sum(sum(double(im).*x))/area;
meany = sum(sum(double(im).*y))/area;