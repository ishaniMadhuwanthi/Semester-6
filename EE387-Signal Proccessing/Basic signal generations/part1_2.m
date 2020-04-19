%For the damped sinusoidal signal x(t) = 3e-tcos(4πt) write a MATLAB program to generate x(t) and its envelope, then plot. 

clear all;

t=linspace(-5,5,1000);

y = 3*e.^(-1*t).*(cos(4*pi*t));%x(t) is taken as y
y_env = 3*e.^(-1*t)% envelope of y
plot(t,y)%plot x(t)
hold on
plot(t,y_env,'r') %plot upper envelope of x(t)
hold on
plot(t,-y_env,'g')%plot lower envelope of x(t)
axis([-5 5 -500 600])
hold off
xlabel('t');
ylabel('y(t)');
legend('Damped signal,x(t)','uper envelope','lower envelope')
title('Damped sinosoidal signal and its envelope')

