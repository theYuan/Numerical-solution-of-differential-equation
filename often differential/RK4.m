% RK4 4阶龙格库塔
function y=RK4(dy,xa,xb,y0,h)
x=xa:h:xb;
y(1)=y0;
for i=1:(xb-xa)/h
    k1=dy(x(i),y(i));
    k2=dy(x(i)+h/2,y(i)+k1*h/2);
    k3=dy(x(i)+h/2,y(i)+k2*h/2);
    k4=dy(x(i)+h,y(i)+k3*h);
    y(i+1)=y(i)+h/6*(k1+2*k2+2*k3+k4);
end
plot(x,y,'.','MarkerSize',20)
