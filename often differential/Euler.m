% Euler.m 欧拉法
function y=Euler(dy,xa,xb,y0,h)
x=xa:h:xb;
y(1)=y0;
for i = 1:(xb-xa)/h
    y(i+1)=y(i)+dy(x(i),y(i))*(x(i+1)-x(i));
end
plot(x,y,'.','MarkerSize',20)
