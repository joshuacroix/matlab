x = linspace (0, 4*pi);
y = sin(x);
figure;
plot(x,y,'ok')
p=polyfit(x,y,7)
hold on 
plot(x,polyval(p,x),'r-');

