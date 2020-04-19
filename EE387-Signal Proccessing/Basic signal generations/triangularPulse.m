%create a triangular pulse

clear all;

function x =rect(t)
  x=(sign(t+0.5)-sign(t-0.5))/2;
endfunction

f_s=1000;
T_s=1/f_s;
t=[-5:T_s:5];
x=rect(t);

y=T_s*conv(x,x);

t_y=-10:T_s:10;
close all;
plot(t_y,y);

axis([-2 2 -1 2]);
xlabel('time(sec)');
ylabel('y_(t)');