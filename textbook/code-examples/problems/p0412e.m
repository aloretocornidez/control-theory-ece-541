t = (0:500)/500;
e = exp(-6.035*t).*sin(7.4067*t+0.976); c = 1-e; [cc,ii] = max(c);
axis([0 1 -.2 1.2]); 
plot(t,c,'--',t,e,'-.',[0 t(ii) t(ii)],[c(ii) c(ii) -.2],'-'); grid;
axis([0 1 -.2 1.2]);
xlabel('Time (seconds)'); ylabel('Amplitude');
text(.7,1.01,'c(t)');
text(.7,.01,'e(t)');
