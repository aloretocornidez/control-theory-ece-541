num = [1 4]; den = conv(conv([1 .5],[1 .5]),[1 2]);
%
[kbreak sbreak] = rlpoba(num,den);
[kmax,smax] = rootangl(num,den,90);
ii = find(abs(smax) <= 1000); kmax = kmax(ii); smax = smax(ii);
r = rlocus(num,den,sort([0 kbreak' kmax' logspace(-1,4)]));
axis([-6 2 -10 10]); plot(r,'-'); grid; axis([-6 2 -10 10]);
xlabel('Real'); ylabel('Imaginary');
hold on; plot(roots(num)+eps*sqrt(-1),'o'); hold off;
hold on; plot(roots(den)+eps*sqrt(-1),'x'); hold off;
hold on; plot([smax conj(smax)],'*'); hold off;
text(0,imag(smax),[' Kmax = ' num2str(kmax)]);
text(0,-imag(smax),[' Smax = ' num2str(-imag(smax)) 'j']);
hold on; plot(sbreak,0*sbreak,'*'); hold off;
text(sbreak,0,[' Kbreak = ' num2str(kbreak)]);
