num = 1; den = conv(conv([1 1],[1 -1]),conv([1 4],[1 4]));
[kbreak,sbreak] = rlpoba(num,den);
r = rlocus(num,den,sort([kbreak' logspace(-1,4)]));
axis([-8 4 -6 6]); plot(r,'-'); grid; axis([-8 4 -6 6]); hold on;
xlabel('REAL'); ylabel('IMAGINARY');
z = roots(num); plot(real(z),imag(z),'o');
p = roots(den); plot(real(p),imag(p),'x');
plot(real(sbreak),imag(sbreak),'*y');
for i = 1:length(sbreak);
  text(sbreak(i),0,['Sbreak = ' num2str(sbreak(i))]);
end;
hold off;
