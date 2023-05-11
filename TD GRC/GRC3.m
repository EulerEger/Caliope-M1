function k_opt = GRC3
A0=1e-4; E0=2e4; 
T1=300; T2=400;
R=8.314;

k1=A0*exp(-E0/(R*T1));
k2=A0*exp(-E0/(R*T2));

options=optimset('Display','Iter','PlotFcns',@optimplotfval);

k_opt = fminsearch(@obj_GRC,[k1 k2],options)

function F=obj_GRC(P)
k1=P(1); k2=P(2);

c_exp = [1000,650,420,280,180,120,80,60,40];
t_exp = [0,100,200,300,400,500,600,800,1000];
% T01 = 435; T0 = 293; tau = 121.4122;
% T1 =300; T2 =400;

[t,c_mod] = ode45(@odeGRC,[0 1000], 1000,[], k1, k2);
c_model = interp1(t,c_mod,t_exp);
%T_mod = T1-(T1-T0)*exp(-t_exp/tau);


F = sum(abs(c_exp - c_model))

figure(1)
plot(t_exp,c_exp,'ro',t_exp,c_model,'b-')
title('Evolution de la concentration')
xlabel('temps (s)')
ylabel('Concentration(mol/l)')


function dc = odeGRC(t,c,k1,k2)
T01 = 435; T0 = 293; tau = 121.4122;
R=8.314; 
T1=300;
T2=400;

A = exp((T2*log(k1)-T1*log(k2))/(T2-T1))
E = ((R*T1*T2)/(T1-T2))*(log(k1/k2))

T = T01-(T01-T0)*exp(-t/tau);
k=A*exp(-E/(R*T));
dc = -k*c^2;
