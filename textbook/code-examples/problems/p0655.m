num = 1; den = conv(conv([1 1],[1 1]),conv([1 4],[1 4]));
%
[kmax,smax] = rootangl(num,den,90);
r = rlocus(num,den,sort([0 kmax' logspace(-1,4)]));
axis([-8 4 -6 6]); plot(r,'-'); grid; axis([-8 4 -6 6]);
xlabel('Real'); ylabel('Imaginary');
hold on; plot(real(roots(num)),imag(roots(num)),'o'); hold off;
hold on; plot(real(roots(den)),imag(roots(den)),'x'); hold off;
hold on; plot(real(roots(den)),imag(roots(den))+0.1,'x'); hold off;
hold on; plot([smax conj(smax)],'*'); hold off;
text(0,imag(smax),[' Kmax = ' num2str(kmax)]);
text(0,-imag(smax),[' Smax = -' num2str(imag(smax)) 'j']);
