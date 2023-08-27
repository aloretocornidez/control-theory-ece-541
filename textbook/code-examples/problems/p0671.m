num = [1 8]; den = [conv([1 3.125],[1 100]) 0];
%
[kbreak sbreak] = rlpoba(num,den);
r = rlocus(num,den,sort([0 kbreak' logspace(-1,4)]));
axis([-110 15 -20 20]); plot(r,'-'); grid; axis([-110 15 -20 20]);
xlabel('Real'); ylabel('Imaginary');
hold on; plot(roots(num)+eps*sqrt(-1),'o'); hold off;
hold on; plot(roots(den)+eps*sqrt(-1),'x'); hold off;
hold on; plot(sbreak,0*sbreak,'*'); hold off;
sbreak(3) = sbreak(3)-sqrt(-1); % fix for text legibility
for n = 1:length(kbreak),
  text(real(sbreak(n)),imag(sbreak(n)),[' Kbreak = ' num2str(kbreak(n))]);
end;
