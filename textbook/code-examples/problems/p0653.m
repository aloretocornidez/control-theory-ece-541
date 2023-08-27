num = [1 2]; den = [conv(conv([1 4],[1 8]),[1 2 5]) 0];
%
clf; hold off; sbplot(211);
[kbreak sbreak] = rlpoba(num,den);
[kmax,smax] = rootangl(num,den,90);
ii = find(abs(smax) <= 1000); kmax = kmax(ii); smax = smax(ii);
r = rlocus(num,den,sort([0 kbreak' kmax' logspace(-1,4)]));
axis([-11 3 -6 6]); plot(r,'-'); grid; frz_axis([-11 3 -6 6]); hold on;
xlabel('Real'); ylabel('Imaginary'); title('Negative Feedback');
plot(roots(num)+eps*sqrt(-1),'o');
plot(roots(den)+eps*sqrt(-1),'x');
plot([smax conj(smax)],'*');
text(0,imag(smax),[' Kmax = ' num2str(kmax)]);
text(0,-imag(smax),[' Smax = ' num2str(-imag(smax)) 'j']);
plot(sbreak,0*sbreak,'*');
text(sbreak,0,[' Kbreak = ' num2str(kbreak)]);
%
hold off; sbplot(212);
r = rlocus(-num,den,[0 logspace(-1,4)]);
axis([-11 3 -6 6]); plot(r,'-'); grid; frz_axis([-11 3 -6 6]); hold on;
xlabel('Real'); ylabel('Imaginary'); title('Positive Feedback');
plot(roots(num)+eps*sqrt(-1),'o');
plot(roots(den)+eps*sqrt(-1),'x');
hold off;
