num = 80; den = [conv([0.02 1],[0.05 1]) 0]; w = logspace(0,3);
[mag1 ph1] = bode(num,den,w); db1 = 20*log10(mag1);
[gm1,pm1,wcg1,wcp1] = margins(num,den); gm1 = 20*log10(gm1);
nm = conv(num,[0.143 1]); dn = conv(den,[1 1]);
[mag2 ph2] = bode(nm,dn,w); db2 = 20*log10(mag2);
[gm2,pm2,wcg2,wcp2] = margins(nm,dn); gm2 = 20*log10(gm2);
nm = conv(num,[0.04 1]); dn = conv(den,[0.005 1]);
[mag3 ph3] = bode(nm,dn,w); db3 = 20*log10(mag3);
[gm3,pm3,wcg3,wcp3] = margins(nm,dn); gm3 = 20*log10(gm3);
nm = conv(num,[0.0238 1]); dn = den;
[mag4 ph4] = bode(nm,dn,w); db4 = 20*log10(mag4);
[gm4,pm4,wcg4,wcp4] = margins(nm,dn); gm4 = 20*log10(gm4);
%
clf; hold off; sbplot(211);
semilogx(w,db1,'-',w,db2,'--',w,db3,'-.',w,db4,':'); grid; frz_axis;
title('Composite Bode Diagram');
ylabel('GAIN (DB)'); xlabel('FREQUENCY (RAD/SEC)');
hold on; semilogx(w,0*w); hold off;
hold on; semilogx([wcp1 wcp2 wcp3 wcp4],[0 0 0 0],'*'); hold off;
hold on; semilogx([wcp1 wcp1],[0 -200],'-'); hold off;
hold on; semilogx([wcg1 wcg1],[0 -gm1],'-'); hold off;
hold on; semilogx([10^.1 10^.3],-30*[1 1]+5,'--'); hold off;
text(10^.35,-30,'Phase-Lag Net. Comp.');
hold on; semilogx([wcp2 wcp2],[0 -200],'-'); hold off;
hold on; semilogx([wcg2 wcg2],[0 -gm2],'-'); hold off;
hold on; semilogx([10^.1 10^.3],-50*[1 1]+5,'-'); hold off;
text(10^.35,-50,'Uncompensated');
hold on; semilogx([wcp3 wcp3],[0 -200],'-'); hold off;
hold on; semilogx([wcg3 wcg3],[0 -gm3],'-'); hold off;
hold on; semilogx([10^.1 10^.3],-70*[1 1]+5,'-.'); hold off;
text(10^.35,-70,'Phase-Lead Net. Comp.');
hold on; semilogx([wcp4 wcp4],[0 -200],'-'); hold off;
hold on; semilogx([10^.1 10^.3],-90*[1 1]+5,':'); hold off;
text(10^.35,-90,'Rate Feedback Comp.');
%
sbplot(212);
semilogx(w,ph1,'-',w,ph2,'--',w,ph3,'-.',w,ph4,':'); grid; frz_axis;
% title('Composite Bode Diagram');
ylabel('PHASE (DEGREES)'); xlabel('FREQUENCY (RAD/SEC)');
hold on; semilogx(w,0*w-180); hold off;
hold on; semilogx([wcg1 wcg2 wcg3],[0 0 0]-180,'*'); hold off;
hold on; semilogx([wcp1 wcp1],[0 pm1]-180,'-'); hold off;
hold on; semilogx([wcg1 wcg1],[0 -500]-180,'-'); hold off;
hold on; semilogx([10^.1 10^.3],-210*[1 1]+5,'--'); hold off;
text(10^.35,-210,'Phase-Lag Net. Comp.');
hold on; semilogx([wcp2 wcp2],[0 pm2]-180,'-'); hold off;
hold on; semilogx([wcg2 wcg2],[0 -500]-180,'-'); hold off;
hold on; semilogx([10^.1 10^.3],-230*[1 1]+5,'-'); hold off;
text(10^.35,-230,'Uncompensated');
hold on; semilogx([wcp3 wcp3],[0 pm3]-180,'-'); hold off;
hold on; semilogx([wcg3 wcg3],[0 -500]-180,'-'); hold off;
hold on; semilogx([10^.1 10^.3],-250*[1 1]+5,'-.'); hold off;
text(10^.35,-250,'Phase-Lead Net. Comp.');
hold on; semilogx([wcp4 wcp4],[0 pm4]-180,'-'); hold off;
hold on; semilogx([10^.1 10^.3],-270*[1 1]+5,':'); hold off;
text(10^.35,-270,'Rate Feedback Comp.');
