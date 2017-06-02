% 主程序
clear,clc;
a=4/pi/pi;
f=@(x)x-x;
u=@(x)sin(pi./4.*x).*(1+2.*cos(pi./4.*x));
h=0.4;
t=0.04;
xbound=4;
tbound=0.4;
u1=clex(a,f,u,h,t,xbound,tbound);
u2=clim(a,f,u,h,t,xbound,tbound);
u3=crni(a,f,u,h,t,xbound,tbound);
uu=@(x,t)exp(-t)*sin(pi/2*x)+exp(-t/4)*sin(pi/4*x);
ua=uu([0:0.4:4],0.4)';
