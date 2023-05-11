x = 0:pi/20:3*pi;
y = sin(x);
y = y.*(y>0);
plot(x,y)