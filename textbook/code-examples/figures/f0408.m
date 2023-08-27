zeta = 0.4; wn = 1;
num = wn^2; den = [1 2*zeta*wn wn^2]; t = linspace(0,15);
[y,x] = step(num,den,t);
plot(t,y,'-'); grid;
xlabel('t (seconds)'); ylabel('c(t)');
