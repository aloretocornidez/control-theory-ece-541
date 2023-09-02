p = zeros(9,9); b = zeros(9,2); l = eye(9,9); d = zeros(9,2);
p(1,1) = -30.8;
p(2,1) = 2.13; p(2,2) = -17.4; p(2,9) = .0458;
p(3,1) = 1.67; p(3,3) = -8.66; p(3,9) = .0553;
p(4,2) = .457; p(4,3) = .553; p(4,4) = -.941; p(4,5) = .148;
p(5,3) = .0925; p(5,4) = .0814; p(5,5) = -.349; p(5,6) = .00224;
p(6,2) = 5.97; p(6,6) = -1.94;
p(7,2) = .346; p(7,3) = 2.73; p(7,6) = .0193; p(7,7) = -.314;
p(8,4) = .0898; p(8,5) = .0166; p(8,7) = .0166; p(8,8) = -.104;
p(9,:) = [13.5 5.45 4.23 .213 .0703 .382 .0628 .0207 -.816];
b(1,1) = 616; b(1,2) = 200; b(7,1) = 0.23;
x0 = [20; 3.5; 6.4; 7.16; 3.44; 10.8; 61; 16.5; 400];
%
dt = .05; t = (0:dt:12)'; u = sin(.524*t); u = [(0*t+1) u];
[aa,bb] = c2d(p,b,dt);
if ( exist('dlsim') > 0 )
  eval('y=dlsim(aa,bb,l,d,u,x0);');  % using MATLABs' Control System Toolbox
  plot(t,[y(:,1:8),y(:,9)/10]);
else
  uu = u.'; x = x0;
  for ii = 1:length(uu);
    y = l*x+d*uu(:,ii);
    y1(ii) = y(1); y2(ii) = y(2); y3(ii) = y(3);
    y4(ii) = y(4); y5(ii) = y(5); y6(ii) = y(6);
    y7(ii) = y(7); y8(ii) = y(8); y9(ii) = y(9);
    x = aa*x+bb*uu(:,ii);
  end;
  plot(t,[y1;y2;y3]','-',t,[y4;y5;y6]','-',t,[y7;y8;y9/10]','-');
end;
ii=80; text(t(ii),y(ii,1),'X1');
ii=180; text(t(ii),y(ii,2),'X2');
ii=80; text(t(ii),y(ii,3),'X3');
ii=60; text(t(ii),y(ii,4),'X4');
ii=45; text(t(ii),y(ii,5),'X5');
ii=120; text(t(ii),y(ii,6),'X6');
ii=150; text(t(ii),y(ii,7),'X7');
ii=180; text(t(ii),y(ii,8),'X8');
ii=160; text(t(ii),y(ii,9)/10,'0.1*X9');