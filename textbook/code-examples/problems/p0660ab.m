num = 1; den = conv(conv([1 1],[1 2]),[1 3]);
%
clf; hold off; sbplot(211);
[kbreak sbreak] = rlpoba(num,den);
[kmax,smax] = rootangl(num,den,90);
r = rlocus(num,den,sort([0 kbreak' kmax' logspace(-1,3)]));
axis([-6 2 -5 5]); plot(r,'-'); grid; axis([-6 2 -5 5]); hold on;
xlabel('Real'); ylabel('Imaginary'); title('Negative Feedback');
plot(real(roots(num)),imag(roots(num)),'o');
plot(real(roots(den)),imag(roots(den)),'x');
plot([smax conj(smax)],'*');
text(0,imag(smax),[' Kmax = ' num2str(kmax)]);
text(0,-imag(smax),[' Smax = ' num2str(-imag(smax)) 'j']);
plot(sbreak,0,'*');
text(sbreak,0,[' Kbreak = ' num2str(kbreak)]);
%
hold off; sbplot(212);
[kbreak sbreak] = rlpoba(-num,den);
[kmax,smax] = rootangl(-num,den,90);
r = rlocus(-num,den,sort([0 kbreak' kmax' logspace(-1,3)]));
axis([-6 2 -5 5]); plot(r,'-'); grid; axis([-6 2 -5 5]); hold on;
xlabel('Real'); ylabel('Imaginary'); title('Positive Feedback');
plot(real(roots(num)),imag(roots(num)),'o');
plot(real(roots(den)),imag(roots(den)),'x');
plot([smax conj(smax)],'*');
text(0,imag(smax),[' Kmax = ' num2str(kmax)]);
plot(sbreak,0*sbreak,'*');
text(sbreak,0,[' Kbreak = ' num2str(kbreak)]);
hold off;
