function dif
[z,C] = ode45(@odediff, [0 1e-3], [.2]);
plot(z,C)
figure(1)
plot(z,C,'b-')

function dC=odediff(z,C)

%Donée
D=1.2e-9; k=1e-3;
dC=ones(2,1);

dC(1) = C(2);
dC(2) = (k/D)*C(1);
figure(1)
plot(t,y,'ro')
hold on

