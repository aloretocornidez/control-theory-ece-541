 function [x] = f0507fix(wnt,tval,zeta);
%function [x] = f0507fix(wnt,tval,zeta);
% returns the difference between tval & computed tval @ wnt for zeta
%
% indata = [tval zeta]
% tval = indata(1); zeta = indata(2);
z = sqrt(1-zeta^2);
x = abs(-tval+1-(exp(-zeta*wnt)/z)*sin(wnt*z+asin(z)));
% x = abs(x);
