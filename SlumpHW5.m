clc
clear

r = load('slump.txt');
maximum = max(r)
mn = min(r)
x = [mn:0.28:maximum]

mu = mean(r)
sigma = std(r)

norms = normpdf(x,mu,sigma);

figure
plot(x,norms, 'r')
axis([70 130 0 0.05]);
title('PDF')
ylabel('Prob')
xlabel('Slump (mm)')

norma1 = normcdf(x,mu,sigma);
figure
plot(x,norma1, 'b')
axis([70 130 0 1]);
title('CDF')
ylabel('Cumulative Probability')
xlabel('slump (mm)')

var1 = norminv(.75,mu,sigma);

disp("Based on samples, there's a 75 percent")
disp("confidence interval for the average")
disp("slump of this concrete mix :")
disp(mn)
disp(" to ")
disp(var1)