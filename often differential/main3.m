% main3.m 主程序3
clear,clc;
dy=@(x,y)2*x+y+1;
xa=0;
xb=1;
y0=1;
h=0.1;
y1=Euler(dy,xa,xb,y0,h);
hold on;
y2=ImEuler(dy,xa,xb,y0,h);
y3=RK4(dy,xa,xb,y0,h);
grid on;
f=dsolve('Dy=2*x+y+1','y(0)==1','x');
plot(xa:h:xb,double(subs(f,xa:h:xb)),'LineWidth',3)
figure
plot(xa:h:xb,abs(double(subs(f,xa:h:xb))-y2),'.','MarkerSize',20)
hold on;
grid on;
plot(xa:h:xb,abs(double(subs(f,xa:h:xb))-y3),'.','MarkerSize',20)
