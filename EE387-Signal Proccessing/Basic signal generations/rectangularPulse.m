%Consider the rectangular pulse defined as: 
 %       x(t)  = 1   for -0.5 <=  t < 0.5 sec  
%              = 0    elsewhere 

clear all;

function x =rect(t)
  x=(sign(t+0.5)-sign(t-0.5))/2;
endfunction


f_s=1000;
T_s=1/f_s;
t=[-5:T_s:5];

figure(1)
plot(t,rect(t));
axis([-2 2 -1 2]);
xlabel('time(sec)');
ylabel('x_1(t)');
title('Plot 1:A rectangular pulse');

figure(2)
plot(t,rect(t-1));
axis([-2 2 -1 2]);
xlabel('time(sec)');
ylabel('x_2(t)');
title('Plot 2:A rectangular pulse');

figure(3)
plot(t,rect(t/2));
axis([-2 2 -1 2]);
xlabel('time(sec)');
ylabel('x_3(t)');
title('Plot 3:A rectangular pulse');

figure(4)
x4=rect(t)+(1/2)*rect(t-1);
plot(t,x4);
axis([-2 2 -1 2]);
xlabel('time(sec)');
ylabel('x_4(t)');
title('Plot 4:A rectangular pulse');

figure(5)
x5=-x4;
x5=rect(-t)+(1/2)*rect(-t-1);
plot(t,x5);
axis([-2 2 -1 2]);
xlabel('time(sec)');
ylabel('x_5(t)');
title('Plot 5:A rectangular pulse');

figure(6)
x6=rect(1-t)+(1/2)*rect(-t);
plot(t,x6);
axis([-2 2 -1 2]);
xlabel('time(sec)');
ylabel('x_6(t)');
title('Plot 6:A rectangular pulse');










