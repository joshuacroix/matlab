clear;
clc;
 
%First Part


x = load('soapbox.txt');
sample = x(:,1);
mass = x(:,2);
 
disp('------------------Mean:');
M=mean(mass)
figure;
histogram(mass,20)
disp('------------------Standard Deviation:');
SD=std(mass)

pd = makedist('Normal',M,SD);
area1 = cdf(pd, 102);
area2 = cdf(pd, 101);
area3 = area1-area2;
fprintf('probability that the box weight is betwen 101 and 102 oz.=%.4f\n',area3)

area4 = cdf(pd, 104);
area5 = 1 - area4;
fprintf('probability that the box weight is greater than 104 oz.=%.4f\n',area5)

area6 = cdf(pd, 100);
fprintf('probability that the box weight is less than 100 oz.=%.4f\n',area6)

ex = norminv(0.05, M, SD);
fprintf('Box weight exceeded %.4f oz only 5 percent of the time.',ex)