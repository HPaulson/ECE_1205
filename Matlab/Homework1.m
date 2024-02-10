clear; clc; close all;
x = [[0:2:20]', ones(11,4), [10:-1:0]']
y = [[0:2:10]; x; [20:-4:0];]

load clown;
Y = X(1:2:200, 1:2:320);
imshow(Y,map);