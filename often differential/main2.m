% main2.m 主程序2
clear,clc;
dy=@(x,y)y^2+1;
xa=0;
xb=0.6;
y0=1;
h=0.1;
y1=ImEuler(dy,xa,xb,y0,h);
hold on;
f=dsolve('Dy=y^2+1','y(0)==1','x');
grid on;
plot(xa:h:xb,double(subs(f,xa:h:xb)),'LineWidth',3)
