z = linspace(0,.9999);
over = exp(-z*pi./sqrt(1-z.^2))*100;
plot(z,over);
xlabel('Zeta'); ylabel('Percent maximum overshoot');
