function integration2
clear all
clf
clc
[t,y] = ode15s(@exode, [0 12], [0 1 1]);
plot(t,y)
figure(1)
plot(t,y,'b-')

function dy=exode(t,y)

dy=ones(3,1);
dy(1) = y(2)*y(3);
dy(2) = -y(1)*y(3);
dy(3) = -.51*y(1)*y(2);
figure(1)
plot(t,y,'ro)
hold on

