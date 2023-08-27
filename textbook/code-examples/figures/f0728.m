w = logspace(-1,2);
num = 21; den = conv(conv([.1 1],[.4 1]),[1.2 1]);
[mag1 ph1] = bode(num,den,w); db1 = 20*log10(mag1);
[gm1,pm1,wcg1,wcp1] = margins(num,den); gm1db = 20*log10(gm1);
num = conv(num,[.167 1]); den = conv(den,[.05 1]);
[mag2 ph2] = bode(num,den,w); db2 = 20*log10(mag2);
[gm2,pm2,wcg2,wcp2] = margins(num,den); gm2db = 20*log10(gm2);
%
clf; hold off; sbplot(211);
semilogx(w,db1,'r-',w,db2,'g--'); grid; frz_axis; hold on;
ylabel('GAIN (DB)'); xlabel('FREQUENCY (RAD/SEC)');
semilogx([wcg1 wcg1],[-gm1db 0],'r-',wcg1,-gm1db,'*r');
text(wcg1,-gm1db,[' G.M. = ' num2str(gm1db)]);
semilogx([wcg2 wcg2],[-gm2db 0],'g--',wcg2,-gm2db,'*g');
text(wcg2,-gm2db,[' G.M. = ' num2str(gm2db)]);
semilogx([1e-8 wcp1 wcp1],[0 0 -1000],'r-',[.22 .44],[-25 -25],'r-');
text(.45,-25,'Uncompensated');
semilogx([1e-8 wcp2 wcp2],[0 0 -1000],'g--',[.22 .44],[-35 -35],'g--');
text(.45,-35,'Compensated');
%
hold off; sbplot(212);
semilogx(w,ph1,'r-',w,ph2,'g--'); grid; frz_axis; hold on;
ylabel('PHASE (DEGREES)'); xlabel('FREQUENCY (RAD/SEC)');
semilogx([wcp1 wcp1],[0 pm1]-180,'r-',wcp1,pm1-180,'*r');
text(wcp1,pm1-180,['P.M. = ' num2str(pm1)]);
semilogx([wcp2 wcp2],[0 pm2]-180,'g--',wcp2,pm2-180,'*g');
text(wcp2,pm2-180,['P.M. = ' num2str(pm2)]);
semilogx([1e-8 wcg1 wcg1],[0 0 -1000]-180,'r-',[7 20],[-40 -40],'r-');
text(25,-40,'Uncompensated');
semilogx([1e-8 wcg2 wcg2],[0 0 -1000]-180,'g--',[7 20],[-80 -80],'g--');
text(25,-80,'Compensated');
hold off;
