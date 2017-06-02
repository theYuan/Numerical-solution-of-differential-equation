% ImEuler.m 改进的欧拉法，预估-校正一次
function y=ImEuler(dy,xa,xb,y0,h)
x=xa:h:xb;
y(1)=y0;
f(1)=dy(x(1),y(1));
for i=1:round((xb-xa)/h)
    ytmp=y(i)+h*dy(x(i),y(i));
    ftmp=dy(x(i+1),ytmp);
    y(i+1)=y(i)+h/2*(f(i)+ftmp);
    f(i+1)=dy(x(i+1),y(i+1));
end
plot(x,y,'.','MarkerSize',20)