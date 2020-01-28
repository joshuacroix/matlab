clear
x = -.75:0.05:0.75
y = -.75:0.05:0.75

[xx,yy]=meshgrid(x,y);

iia = find(xx==0);
xx(iia)= eps;
iia = find(yy==0);
yy(iia)= eps;
zz=1./(xx.^2+yy.^2);
iia=find(zz > 300);
zz(iia)=300;
figure
surf(xx,yy,zz)