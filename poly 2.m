x = (0:.1:2.5)';
y = erf(x);
plot(x,y,'r*')
p = polyfit(x,y,6)
f = polyval(p,x);
table = [x y f y-f]
plot(x,y,'r*',x,f)
