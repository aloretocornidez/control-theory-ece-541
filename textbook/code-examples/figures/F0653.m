z = linspace(.1,.7);
Mp = (0*z+1)./(2*z.*sqrt(1-z.^2));
axis([0 .7 1 3]); plot(z,Mp); axis([0 .7 1 3]);
title('Mp versus the damping ratio');
xlabel('Damping ratio zeta'); ylabel('Mp');
