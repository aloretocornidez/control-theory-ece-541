t = 0:10;
u = 1+0*t;
x1 = u+2*t;
x2 = 2*u;
axis([0 7 0 7]); plot(t,x1,'-',t,x2,'--'); axis([0 7 0 7]);
xlabel('t (sec)'); ylabel('State values');
