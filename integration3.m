function integration3
[t,T] = ode45(@heat, [0 180], [473]);
figure(1); plot(t,T,'b-')
grid on

function dT = heat(t,T)
p=300; v=0.001; a=0.025; c=900;
h=30; e=0.8; s=5.67e-8;
dT=(a/(p*c*v))*(e*s*(297^4-T^4)+h*(297-T));
figure(1)
plot(t,T,'ro')
hold on
