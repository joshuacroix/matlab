hold on
t=0:0.1:40
R=10
r=1.8
d=0.8
a=0.5
x = (R-r)*cos(t)+d*cos(t*(R-r)/r)
y = ((R-r)*sin(t)+d*sin(t*(R-r)/r)).*(cos(a*t))
z = ((R-r)*sin(t)+d*sin(t*(R-r)/r)).*(sin(a*t))
plot3(x,y,z,'y')
t=40:0.1:80
x = (R-r)*cos(t)+d*cos(t*(R-r)/r)
y = ((R-r)*sin(t)+d*sin(t*(R-r)/r)).*(cos(a*t))
z = ((R-r)*sin(t)+d*sin(t*(R-r)/r)).*(sin(a*t))
plot3(x,y,z,'r')
t=80:0.1:120
x = (R-r)*cos(t)+d*cos(t*(R-r)/r)
y = ((R-r)*sin(t)+d*sin(t*(R-r)/r)).*(cos(a*t))
z = ((R-r)*sin(t)+d*sin(t*(R-r)/r)).*(sin(a*t))
plot3(x,y,z,'g')
t=120:0.1:160
x = (R-r)*cos(t)+d*cos(t*(R-r)/r)
y = ((R-r)*sin(t)+d*sin(t*(R-r)/r)).*(cos(a*t))
z = ((R-r)*sin(t)+d*sin(t*(R-r)/r)).*(sin(a*t))
plot3(x,y,z,'m')
t=160:0.1:200
x = (R-r)*cos(t)+d*cos(t*(R-r)/r)
y = ((R-r)*sin(t)+d*sin(t*(R-r)/r)).*(cos(a*t))
z = ((R-r)*sin(t)+d*sin(t*(R-r)/r)).*(sin(a*t))
plot3(x,y,z,'b')
hold off