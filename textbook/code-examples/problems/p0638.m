num = 8*[2 1]; den = [conv([10 1],[.05 1]) 0]; w = logspace(-2,2);
[mag ph] = bode(num,den,w); db = 20*log10(mag);
[gm,pm,wcg,wcp] = margins(num,den); gmdb = 20*log10(gm);
ph = ph-0.2*w'*180/pi; pm = pm-0.2*wcp*180/pi;   % time delay factor
wcg = crosses(w,crossing(ph,-180));
[mag2,ph2] = bode(num,den,wcg); gmdb = -20*log10(mag2);
%
clf; hold off; sbplot(211);
semilogx(w,db,'-',w,0*w,'-'); frz_axis; grid; hold on;
ylabel('GAIN (DB)'); xlabel('FREQUENCY (RAD/SEC)');
semilogx([wcp wcp],[0 -200],'-b');
text(wcp,0,['W = ' num2str(wcp)]);
semilogx([wcg wcg],[-gmdb 0],'-b');
text(wcg,-gmdb,[' G.M. = ' num2str(gmdb)]);
%
hold off; sbplot(212);
axis([-2 2 -270 -90]); semilogx(w,ph,'-',w,0*w-180,'-'); grid;
ylabel('PHASE (DEGREES)'); xlabel('FREQUENCY (RAD/SEC)'); hold on;
semilogx([wcg wcg],[-180 -5000],'-b');
text(wcg,-180,['W = ' num2str(wcg)]);
semilogx([wcp wcp],[0 pm]-180,'-b');
text(wcp,pm-180,['P.M. = ' num2str(pm)]);
frz_axis([-2 2 -270 -90],1); hold off;
