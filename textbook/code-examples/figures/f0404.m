t = linspace(0,12);
zz = [.1 .2 .3 .4 .6 .7 .8 1.00001 1.5 2.0];
for i = 1:10;
  z = zz(i);
  c = 1-(exp(-z*t)/sqrt(1-z^2)).*sin(t*sqrt(1-z^2)+acos(z));
  plot(t,c);
  if ( i == 1 ), hold on; end;
end;
hold off;
