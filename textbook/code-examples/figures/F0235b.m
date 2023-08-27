load f0235b;
tt = linspace(0,12); [val,states] = step(2,[1 1 2],tt);
plot(tt,val,'-',t,y,'--'); grid;
xlabel('Time (seconds)'); ylabel('Output Amplitude');
