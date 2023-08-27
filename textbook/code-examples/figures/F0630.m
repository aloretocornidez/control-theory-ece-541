num = 10; den = [0.1 1 0]; w = logspace(0,2);
[mag ph] = bode(num,den,w); db = 20*log10(mag);
[gm,pm,wcg,wcp] = margins(num,den); gmdb = 20*log10(gm);
%
clf; hold off; sbplot(211);
semilogx(w,db); grid; frz_axis; hold on;
title('Composite Bode Diagram'); 
ylabel('GAIN (DB)'); xlabel('FREQUENCY (RAD/SEC)');
semilogx([w(1) wcp wcp],[0 0 -200]);
text(wcp,0,['W = ' num2str(wcp)]);
%
hold off; sbplot(212);
semilogx(w,ph,w,0*w-180); grid; frz_axis; hold on;
title('Composite Bode Diagram');
ylabel('PHASE (DEGREES)'); xlabel('FREQUENCY (RAD/SEC)');
semilogx([wcp wcp w(1)],[0 pm pm]-180);
text(wcp,pm-180,['PHASE MARGIN = ' num2str(pm)]);
hold off;
