clear;
clc;

z = load('concrete.txt');
data = z(:,1);
mu = mean(data)
sigma = std(data)
maximum = max(z)
minimum = min(z)
x = [minimum:.28:maximum]

norm = normpdf(x, mu, sigma);

figure
plot(x, norm, 'r')
title('pdf')
ylavel('probability')
xlabel('slump (mm)')