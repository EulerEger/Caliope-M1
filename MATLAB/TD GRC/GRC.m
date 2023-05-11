function GRC
k_opt = fminsearch(@obj_GRC,1e-5)

function F=obj_GRC(k)
c_exp = [1000,650,420,280,180,120,80,60,40];
t_exp = [0,100,200,300,400,500,600,800,1000];

[t,c_mod] = ode45(@odeGRC,[0 1000], [1000],[],k);
c_model = interp1(t,c_mod,t_exp)
F = sum(abs(c_exp - c_model))

figure(1)
plot(t_exp,c_exp,'ro',t_exp,c_model,'b-')
title('Evolution de la concentration')
xlabel('temps (s)')
ylabel('Concentration(mol/l)')
hold on

function dc = odeGRC(t,c,k)
%k=1e-5;
dc = -k*c^2;
