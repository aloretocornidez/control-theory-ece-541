t = 0:.05:10;
x2=exp(-2.5*t).*(151000*sin(1.32*t)+30200*sin(1.32*t+41.30*pi/180));
plot(t,x2); grid; xlabel('Time (weeks)'); ylabel('Amplitude');
