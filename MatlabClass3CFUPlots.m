clear
c = 0.3;
b = -1.65;
u=0:pi/100:2*pi;
v=0:pi/100:2*pi;
[uu,vv]=meshgrid(u,v);
x=(1+c.*vv).*cos(uu).*sin(vv);
y=(1+c.*vv).*sin(uu).*sin(vv);
z=b.*cos(vv)

figure
surf(x,y,z)
view(45,10)
shading flat