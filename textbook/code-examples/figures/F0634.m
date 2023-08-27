num = 20*[.2 1]; den = [.5 1 0]; w = logspace(-1,2);
[mag,ph] = bode(num,den,w); db = 20*log10(mag);
[gm,pm,wcg,wcp]=margins(num,den);
%
phdelay = ph-.1*w'*180/pi;  % time delay factor (.1)
pmdelay = pm-.1*wcp*180/pi; % exact from margins!
% The Professional Control Toolbox from MATLAB uses "MARGIN" :
%[gm,pm2,wcg,wcp2] = margin(mag,phdelay,w); gm = 20*log10(gm);
wcg = crosses(w,crossing(phdelay,-180));
[mag2,ph2] = bode(num,den,wcg); gm = -20*log10(mag2);
%
clf; sbplot(211);
semilogx(w,db,'-'); grid; frz_axis;
xlabel('FREQUENCY (RAD/SEC)'); ylabel('GAIN (DB)');
hold on; semilogx([w(1) wcp*[1 1]],[0 0 -200],'-'); hold off;
text(wcp,0,[' W = ' num2str(wcp)]);
hold on; semilogx(wcg*[1 1],[0 -gm],'-',wcg,-gm,'*'); hold off;
text(wcg,-gm,[' G.M. (w tdf) = ' num2str(gm)]);
%
sbplot(212);
frz_axis([-1 2 -200 0],1); semilogx(w,ph,'-',w,phdelay,'-'); grid; 
frz_axis([-1 2 -200 0],1);
xlabel('FREQUENCY (RAD/SEC)'); ylabel('PHASE (DEGREES)');
hold on; semilogx(wcp*[1 1],[0 pm]-180,'-'); hold off;
hold on; semilogx(wcp*[1 1],[pm pmdelay]-180,'*'); hold off;
text(wcp,pm-180,[' P.M. (w/o tdf) = ' num2str(pm)]);
text(wcp,pmdelay-180,[' P.M. (w tdf) =' num2str(pmdelay)]);
hold on; semilogx([w(1) wcg*[1 1]],[0 0 -400]-180,'-'); hold off;
text(wcg,-180,[' W = ' num2str(wcg)]);
