function ui=clex(a,f,u,h,t,xbound,tbound)
N=xbound/h;
r1=a*t/(h^2);
r2=1-2*r1;
c=diag(ones(1,N-1)*r2)+diag(ones(1,N-2)*r1,1)+diag(ones(1,N-2)*r1,-1);
x=0:h:xbound;
ui=u(x(2:length(x)-1))';
fi=f(x(2:length(x)-1))';
for i=1:tbound/t
    ui=c*ui+t*fi;
end
ui=[0;ui;0];