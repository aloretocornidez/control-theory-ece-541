num = -1;
den = conv(conv([1 1],[1 -1]),conv([1 4],[1 4]));
[kbreak,sbreak] = rlpoba(num,den);
r = rlocus(num,den,sort([0 kbreak' logspace(-2,4)]));
axis([-8 4 -6 6]); plot(r,'-'); grid; axis([-8 4 -6 6]);
xlabel('Real'); ylabel('Imaginary');
hold on; plot(real(roots(num)),imag(roots(num)),'o'); hold off;
hold on; plot(real(roots(den)),imag(roots(den)),'x'); hold off;
