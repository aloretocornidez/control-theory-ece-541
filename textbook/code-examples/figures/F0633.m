num=775*conv([.1 1],[.2 1]);
den=[conv([.5 1],[1 1]) 0]; den=conv(den,[.655e-4 6.55e-3 1]);
w = logspace(-1,3);
[mag ph] = bode(num,den,w); db = 20*log10(mag);
[gm,pm,wcg,wcp] = margins(num,den); gmdb = 20*log10(gm);
%
clf; hold off; sbplot(211);
semilogx(w,db); grid; frz_axis;
ylabel('GAIN (DB)'); xlabel('FREQUENCY (RAD/SEC)');
hold on; semilogx([w(1) wcp wcp],[0 0 -200]); hold off;
text(wcp,0,['W = ' num2str(wcp)]);
hold on; semilogx([wcg wcg],[-gmdb 0]); hold off;
text(wcg,-gmdb,[' G.M. = ' num2str(gmdb)]);
%
sbplot(212);
semilogx(w,ph); grid; frz_axis;
ylabel('PHASE (DEGREES)'); xlabel('FREQUENCY (RAD/SEC)');
hold on; semilogx([w(1) wcg wcg],[-180 -180 -5000]); hold off;
text(wcg,-180,['W = ' num2str(wcg)]);
hold on; semilogx([wcp wcp],[0 pm]-180); hold off;
text(wcp,pm-180,['PHASE MARGIN = ' num2str(pm)]);
