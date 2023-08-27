num = 1.6*[1 10]; den = [conv([1 1],conv([1 4],[1 4])) 0];
[kbreak,sbreak] = rlpoba(num,den);
[kmax,smax] = rootangl(num,den,90);
r = rlocus(num,den,sort([kbreak' logspace(-1,4) 1e+6]));
axis([-14 2 -5 5]); plot(r,'-'); grid; axis([-14 2 -5 5]);
xlabel('REAL'); ylabel('IMAGINARY');
z = roots(num); hold on; plot(real(z),imag(z),'o'); hold off;
p = roots(den); hold on; plot(real(p),imag(p),'x'); hold off;
hold on; plot(0,imag(smax),'*',0,-imag(smax),'*'); hold off;
text(0,imag(smax),[' K = ' num2str(kmax)]);
text(0,-imag(smax),[' S = ' num2str(-imag(smax)) 'j']);

