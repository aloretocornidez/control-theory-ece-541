num = [1 6]; den = [1 16 100 0];
%
r = rlocus(num,den,[0 logspace(-1,4)]);
axis([-10 2 -20 20]); plot(r,'-'); grid; hold on; axis([-10 2 -20 20]);
xlabel('Real'); ylabel('Imaginary');
plot(roots(num)+eps*sqrt(-1),'o');
plot(roots(den)+eps*sqrt(-1),'x');
hold off;
