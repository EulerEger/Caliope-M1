function reacteurs02
[t,T]=ode45(@echangeur,[0 100],[293 293 293])
figure(1)
plot(t,T)
function dT=echangeur(t,T)
Cp=2; To=293.15; W=100; Tv=523.15;
M1=1000; Ua=10;
dT=zeros(3,1);

dT(1)=(W*Cp*(To-T(1))+Ua*(Tv-T(1)))/(M1*Cp);
dT(2)=(W*Cp*(T(1)-T(2))+Ua*(Tv-T(2)))/(M1*Cp);
dT(3)=(W*Cp*(T(2)-T(3))+Ua*(Tv-T(3)))/(M1*Cp);

figure(1)
plot(t,T,'o')
hold on