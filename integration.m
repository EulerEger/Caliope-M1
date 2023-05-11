function integration
[t,y] =ode15s(@first,[0 10],[3]);
figure(1)
plot(t,y,'b-')

function dydt=first(t,y)
dydt=2
figure(1)
plot(t,y,'ro')
hold on
pause(1)

