function GRC2
A0 = 1e-6; E0 = 1.6e4;
options=optimset('Display','Iter','PlotFcns',@optimplotfval);
k_opt = fminsearch(@obj_GRC,[A0 E0],options)

function F=obj_GRC(P)
A=P(1); E=P(2);

c_exp = [1000,650,420,280,180,120,80,60,40];
t_exp = [0,100,200,300,400,500,600,800,1000];
T_exp = [293 378 405 423 428 433 434 437 435];
T1 = 435; T0 = 293; tau = 121.4122;

[t,c_mod] = ode45(@odeGRC,[0 1000], [1000],[], A, E);
c_model = interp1(t,c_mod,t_exp);
T_mod = T1-(T1-T0)*exp(-t_exp/tau);


F = sum(abs(c_exp - c_model))

figure(1)
plot(t_exp,c_exp,'ro',t_exp,c_model,'b-')
title('Evolution de la concentration')
xlabel('temps (s)')
ylabel('Concentration(mol/l)')


function dc = odeGRC(t,c,A,E)
R=8.314; T1 = 435; T0 = 293; tau = 121.4122;
T = T1-(T1-T0)*exp(-t/tau);
k=A*exp(-E/(R*T));
dc = -k*c^2
