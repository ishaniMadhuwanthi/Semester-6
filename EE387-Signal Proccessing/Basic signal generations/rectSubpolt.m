%Elementary signal operations 


clear all;

function x =rect(t)
  x=(sign(t+0.5)-sign(t-0.5))/2;
endfunction


f_s=1000;
T_s=1/f_s;
t=[-5:T_s:5];

x1=rect(t);
subplot(3,2,1);
plot(t,x1);
axis([-2 2 -1 2]);
xlabel('time(sec)')
ylabel('x_1(t)')
title('x_1(t)=rect(t)')

x2=rect(t-1);
subplot(3,2,2);
plot(t,x2);
axis([-2 2 -1 2]);
xlabel('time(sec)');
ylabel('x_2(t)');
title('x_2(t)=x(t-1)');

x3=rect(t/2);
subplot(3,2,3);
plot(t,x3);
axis([-2 2 -1 2]);
xlabel('time(sec)')
ylabel('x_3(t)')
title('x3_(t)=rect(1/2)')

x4=rect(t)+(1/2)*rect(t-1);
subplot(3,2,4);
plot(t,x4);
axis([-2 2 -1 2]);
xlabel('time(sec)');
ylabel('x_4(t)');
title('x_4(t)=rect(t)+(1/2)*rect(t-1)');

x5=-x4;
x5=rect(-t)+(1/2)*rect(-t-1);
subplot(3,2,5);
plot(t,x5);
axis([-2 2 -1 2]);
xlabel('time(sec)');
ylabel('x_5(t)');
title('x_5(t)=-x_4(t)');

x6=rect(1-t)+(1/2)*rect(-t);
subplot(3,2,6);
plot(t,x6);
axis([-2 2 -1 2]);
xlabel('time(sec)');
ylabel('x_6(t)');
title('x_6(t)=rect(1-t)+(1/2)*rect(-t)');


















