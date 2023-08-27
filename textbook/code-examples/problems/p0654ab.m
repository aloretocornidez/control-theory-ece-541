num = conv([1 4],[1 40]);
den = [conv([1 200],[1 900]) 0 0 0];
[kmax,smax] = rootangl(num,den,90);
r = rlocus(num,den,sort([0 kmax' logspace(4,9)]));
axis([-1100 300 -500 500]); plot(r,'-'); grid; frz_axis([-1100 300 -500 500]);
xlabel('Real'); ylabel('Imaginary');
hold on; plot(roots(num)+eps*sqrt(-1),'o'); hold off;
hold on; plot(roots(den)+eps*sqrt(-1),'x'); hold off;
hold on; plot([smax conj(smax)],'*'); hold off;
for n = 1:length(kmax),
  text(0,imag(smax(n)),[' Kmax = ' num2str(kmax(n))]);
  text(0,-imag(smax(n)),[' Smax = ' num2str(-imag(smax(n))) 'j']);
end;
