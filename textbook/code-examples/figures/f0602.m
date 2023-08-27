t = 0:.1:20;
n1 = 1; d1 = [1 .4 1]; y1 = step(n1,d1,t);
n2 = 1; d2 = [1 -.6 150]; y2 = step(n2,d2,t);
n3 = 1; d3 = [1 0 1]; y3 = step(n3,d3,t);
plot(t,[y1 y2 y3],'-'); grid;
xlabel('TIME (t)'); ylabel('c(t)');
text(9.2,1.25,'S1');
text(9.2,.25,'S2');
text(9.2,2,'S3');
