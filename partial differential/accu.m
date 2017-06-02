% 用pdepe求精确解
t=0:0.25:0.5;
x=0:0.1:1;
m=0;
sol=pdepe(m,@pdefun,@pdeic,@pdebc,x,t);
ua = sol(:,:,1)';

function[c,f,s]=pdefun(x,t,u,DuDx)  %建立偏微分方程函数
    c=1;
    f=DuDx;
    s=0;
end

function[u0]=pdeic(x)   %建立偏微分方程的初始条件函数
    u0=sin(pi*x);
end

function[pl,ql,pr,qr]=pdebc(xl,ul,xr,ur,t)   %建立偏微分方程的边界条件函数
    pl = ul;
    ql = 0;
    pr = ur;
    qr = 0;
end
