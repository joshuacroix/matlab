clear;
clc;
 
%First Part
x = load('normtemp.txt');
temp = x(:,1);
figure;
histogram(temp,12);
xlabel('Temperature');
ylabel('Frequency');
title('Temperature for Adult Males and Females');
 
%Second Part
disp('------------------Temperature stats:');
mystat(temp);
 
%Third Part
M=1;
for N = 1:5:length(temp)
    sample(M) = temp(N);
    M = M + 1;
end
figure;
histogram(sample,12)
disp('------------------Temperature sample stats:');
mystat(sample);
