num = 1; den = [conv(conv([1 0.1],[1 1]),[1 10]) 0];
%
[kbreak sbreak] = rlpoba(num,den);
[kmax,smax] = rootangl(num,den,90);
r = rlocus(num,den,sort([0 kbreak' kmax' logspace(-1,4)]));
axis([-12 4 -6 6]); plot(r,'-'); grid; axis([-12 4 -6 6]);
xlabel('Real'); ylabel('Imaginary');
hold on; plot(real(roots(num)),imag(roots(num)),'o'); hold off;
hold on; plot(real(roots(den)),imag(roots(den)),'x'); hold off;
hold on; plot([smax conj(smax)],'*'); hold off;
text(0,imag(smax),[' Kmax = ' num2str(kmax)]);
text(0,-imag(smax),[' Smax = ' num2str(-imag(smax)) 'j']);
hold on; plot(sbreak,0*sbreak,'*'); hold off;
for ii = 1:length(kbreak),
  text(sbreak(ii),0,[' Kbreak = ' num2str(kbreak(ii))]);
end;
