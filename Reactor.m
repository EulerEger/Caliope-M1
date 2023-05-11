function Reactor
clf
[t,T] =ode45(@tank,[0 200],[293 293 293]);
figure(1)

D3=(max(find(T(:,3).*(((T(:,3)-T(1))/(max(T(:,3))-T(1)))<=.99))))

plot(t,T,'-',t(D3),T(D3,3),'k*')
xline(t(D3),'k--');
yline(T(D3,3),'k--');


function dT=tank(t,T)
dT=zeros(3,1);
%Donée
Tv=250+273.15; T0=20+273.15; W=1e2;
M=1e3; UA=100; Cp=2;
a=(W/M); b=UA/(M*Cp); A=b*Tv;

% dT(1)=(W*Cp*(T0 - T(1)) + UA*(Tv-T(1)))/M*Cp;
% dT(2)=(W*Cp*(T(1)-T(2)) + UA*(Tv-T(2)))/M*Cp;
% dT(3)=(W*Cp*(T(2)-T(3)) + UA*(Tv-T(3)))/M*Cp;

 
dT(1)=a*T0+A-T(1)*(a+b);
dT(2)=a*T(1)+A-T(2)*(a+b);
dT(3)=a*T(2)+A-T(3)*(a+b);

% figure(1)
% plot(t,T(3),'+')
% hold on