clc
clear all

t = [-36.7 -19.6 -11.5 -2.6 7 15.4 26.1 42.2 60.6 80.1]+273.15;
p = [1 5 10 20 40 60 100 200 400 760];

x = -1./t;
y = log10(p);

pol = polyfit(x,y,1);
y2 = polyval(pol,x);

figure(1); plot(x,y,'r*',x,y2)

A=pol(2);
B=pol(1);
P2=10.^(A-B./t);
figure(2); plot(t,p,'bo',t,P2)
