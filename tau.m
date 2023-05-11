function tau
tau = fminsearch(@opt_tau, 10)

function F = opt_tau(tau)
T_exp = [293 378 405 423	428 433 434 437 435];
t_exp = [0 100 200 300 400 500 600 800 1000];
T1 = 435;
T0 = 293;
T_mod = T1-(T1-T0)*exp(-t_exp/tau);
F = sum(abs(T_exp - T_mod));
plot(t_exp,T_exp,'ro',t_exp, T_mod,'b--')