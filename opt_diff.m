function opt_diff
dC_opt = fminsearch(@obj_diff, -100);

function F = obj_diff(P)

L=1e-3; Ca0=.2; k=1e-3; D=1.2e-9;

[z,C] = ode45(@odediff, [0 L], [Ca0 P]);
C_an = Ca0*cosh(L*(sqrt(k/D)*(1-z/L)))/(cosh(L*sqrt(k/D)));

figure(1)

subplot(2,1,1)
plot(z,C(:,1),'r--',z,C_an,'b--')
title('Concentration')
ylabel('Concentration (Kg/m3)')
grid on
grid minor

subplot(2,1,2)
plot(z,C(:,2),'r--')
title('Derivie de la concentration')
ylabel('COncentration (Kg/m2)')
xlabel('Distance (m)')
grid on
grid minor

pause(.5)
F = sum(abs(C_an - C(:,1)));

function dC=odediff(z,C)

dC=zeros(2,1);
k=1e-3; D=1.2e-9;
dC(1) = C(2);
dC(2) = (k/D)*C(1);
