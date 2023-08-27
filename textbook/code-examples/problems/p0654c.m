num = conv([1 4],[1 40]);
den = [conv([1 200],[1 900]) 0 0 0];
w = logspace(-2,4);
[mag ph] = bode(num,den,w); db = 20*log10(mag); 
if ( ph(1) > 0 ), ph = ph-360; end;
[gm pp wcg wcp] = margins(num,den); gmdb = 20*log10(gm);
%
clf; sbplot(211);
semilogx(w,db,'-',w,0*w,'-'); grid; frz_axis; hold on;
ylabel('GAIN (DB)'); xlabel('FREQUENCY (RAD/SEC)');
semilogx([wcp wcp],[0 -900],'-');
text(wcp,0,['W = ' num2str(wcp)]);
for ii = 1:length(wcg)
  semilogx(wcg(ii)*[1 1],[-gmdb(ii) 0],'-');
  text(wcg(ii),-gmdb(ii),[' G.M. = ' num2str(gmdb(ii))]);
end;
%
hold off; sbplot(212);
semilogx(w,ph,'-',w,0*w-180,'-'); grid; frz_axis; hold on;
ylabel('PHASE (DEGREES)'); xlabel('FREQUENCY (RAD/SEC)');
for ii = 1:length(wcg)
  semilogx(wcg(ii)*[1 1],[-180 -5000],'-');
  text(wcg(ii),-180,['W = ' num2str(wcg(ii))]);
end;
semilogx([wcp wcp],[pp 0]-180,'-');
text(wcp,pp-180,[' P.M. = ' num2str(pp)]);
hold off;
