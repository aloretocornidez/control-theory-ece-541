p = [0 1; -2 -1]; b = [0; 2];
c = [1 0]; d = 0;
dt = .50; t = 0:dt:12; u = 0*t+1;
[aa,bb] = c2d(p,b,dt);
% The Professional Control Toolbox from MATLAB uses "DLSIM" :
% y = dlsim(aa,bb,c,d,u);
x = 0*diag(aa);
for ii = 2:length(u); x(:,ii) = aa*x(:,ii-1)+bb*u(:,ii); end;
y = c*x+d*u; x = x.'; y = y.';
plot(t,y);
yyy = [];
for i = 1:10;
  xx = [0; 0]; yy = [];
  for j = t;
    yy = [yy c*xx];
    for k = 1:i;
      xx = (dt*p/i+eye(2,2))*xx + dt*b/i;
    end;
  end;
  yyy = [yyy yy'];
  hold on; plot(t,yy,'g'); hold off;
end;
if exist('view');
  mesh(1:10,0:.5:12,yyy); eval('view([83 18]);');
else
  mesh(yyy',[-2 20]);
end;
xlabel('Time (sec)');
text(8,3,0,'Y-axis represents sampling divisor');