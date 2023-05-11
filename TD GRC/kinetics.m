function kinetics
[t,c] = ode45(@reaction,[0 1000], [1000]);
plot(t,c, 'b-')

function dc = reaction(t,c)
GRC =[0 1000    
100 650 
200 420 
300 280 
400 180
500 120
600 80
800 60
1000 40];

t1 = GRC(:,1);
c1 =GRC(:,2);

k=1e-5;
dc = -k*c^2;

figure(1)
plot(t1,c1,'k*')
hold on
