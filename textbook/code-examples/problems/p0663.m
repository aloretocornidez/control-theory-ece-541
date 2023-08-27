num = .111;
den = conv([.1 1],conv([.127 1],[.87 1]));
w = logspace(-1,2);
[mag ph] = bode(num,den,w); db = 20*log10(mag);
[Gm,Pm,Wcg,Wcp] = margins(num,den); Gm = 20*log10(Gm);
ii = find(Wcg < 1e5); Gm = Gm(ii); Wcg = Wcg(ii); % reasonableness

%
clf; sbplot(211);
semilogx(w,db); grid;
ylabel('GAIN (DB)'); xlabel('FREQUENCY (RAD/SEC)');
hold on; semilogx(Wcg,-Gm,'*b'); hold off;
hold on; semilogx([w(1) Wcg Wcg],-[Gm Gm 100],'--'); hold off;
text(Wcg,-Gm,[' G.M. = ' num2str(Gm) ' db @ W = ' num2str(Wcg)]);

%
sbplot(212);
semilogx(w,ph); grid;
ylabel('PHASE (DEGREES)'); xlabel('FREQUENCY (RAD/SEC)');
