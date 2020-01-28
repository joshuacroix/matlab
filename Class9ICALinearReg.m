clear
 % function to create a plot of x and yfit.
info = load ('Class10Data1x.txt') % contains x and y vectors
info2 = load ('Class10Data1y.txt')
x = info(:,1);
y = info2(:,1);
figure
plot(x,y,'md')
hold on
 
p = polyfit(x,y,1);
yfit = p(1)*x+p(2);  
 
plot(x,yfit,'r.')


 
clear
