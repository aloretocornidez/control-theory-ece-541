num = 1; den = [conv([1 0.1],[1 10]) 0];
%
[kbreak sbreak] = rlpoba(num,den);
[kmax,smax] = rootangl(num,den,90);
r = rlocus(num,den,sort([0 kbreak' kmax' logspace(-1,4)]));
axis([-14 4 -10 10]); plot(r,'-'); grid; axis([-14 4 -10 10]);
xlabel('Real'); ylabel('Imaginary');
hold on; plot(real(roots(num)),imag(roots(num)),'o'); hold off;
hold on; plot(real(roots(den)),imag(roots(den)),'x'); hold off;
hold on; plot([smax conj(smax)],'*'); hold off;
text(0,imag(smax),[' Kmax = ' num2str(kmax)]);
text(0,-imag(smax),[' Smax = ' num2str(-imag(smax)) 'j']);
hold on; plot(sbreak,0,'*'); hold off;
text(sbreak,0,[' Kbreak = ' num2str(kbreak)]);
