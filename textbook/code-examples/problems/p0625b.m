num = [2 0 0]; den = conv([.4 1],[.04 1]); w = logspace(-1,2);
[mag ph] = bode(num,den,w); db = 20*log10(mag); ph = ph-360;
[gm,pm,wcg,wcp] = margins(num,den); gmdb = 20*log10(gm);
%
clf; hold off; sbplot(211);
semilogx(w,db,'-',w,0*w,'-'); grid; frz_axis; hold on;
ylabel('GAIN (DB)'); xlabel('FREQUENCY (RAD/SEC)');
semilogx([wcp wcp],[0 -200]);
text(wcp,0,['W = ' num2str(wcp)]);
%
hold off; sbplot(212);
semilogx(w,ph,'-',w,0*w-180,'-'); grid; frz_axis; hold on;
ylabel('PHASE (DEGREES)'); xlabel('FREQUENCY (RAD/SEC)');
semilogx([wcp wcp],[0 pm]-180);
text(wcp,pm-180,['P.M. = ' num2str(pm)]);
hold off;
