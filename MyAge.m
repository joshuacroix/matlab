clear;
clc;
 
 
x = load('normtemp.txt');
 
age = x(:,3);
disp('------------------Age stats:');
mystat(age);
