% main1.m Ö÷º¯Êý
clear,clc;
dy=@(x,y)x-y+1;
xa=0;
xb=1;
y0=1;
h1=0.1;
h2=0.05;
h3=0.025;
y1=Euler(dy,xa,xb,y0,h1);
hold on;
y2=Euler(dy,xa,xb,y0,h2);
y3=Euler(dy,xa,xb,y0,h3);
f=dsolve('Dy=x-y+1','y(0)==1','x');
grid on;
plot(xa:h3:xb,double(subs(f,xa:h3:xb)),'LineWidth',3)