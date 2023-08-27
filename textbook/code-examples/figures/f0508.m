z = 0:.01:.99; wntr = [];
t1 = .4; t2 = 1.4;  % Initialize t1 & t2 for fmins
for zeta = z;
 tval = 0.1; t1 = fmins('f0508fix',t1,[0,1e-2],[],tval,zeta);
 tval = 0.9; t2 = fmins('f0508fix',t2,[0,1e-2],[],tval,zeta);
 wntr = [wntr t2-t1];
end;
%
  p = polyfit(z,wntr,3); pp = polyval(p,z);
plot(z,wntr,'-',z,pp,'--'); grid;
xlabel('ZETA'); ylabel('Wn * Tr');
text(.01,3.2,'FIT :'); fn = 'Wn*Tr =';
for i=1:4; fn=[fn sprintf('%+8.4f',p(i)) '*p^' num2str(4-i)]; end;
text(.01,3.0,fn);
