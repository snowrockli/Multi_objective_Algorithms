clc
clear
close all
A=importdata('DTLZ3.txt');
figure
plot3(A(:,1),A(:,2),A(:,3),'*');