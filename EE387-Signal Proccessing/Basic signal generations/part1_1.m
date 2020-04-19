%Write a Matlab program and necessary functions to generate the following signal: 
%y(t) = r(t+3) – 2r(t+1) +3r(t) – u(t-3) 
 


clear all;  
   
  % t: length of time 
  % m: slope of the ramp function 
  % ad: advance (positive), delay (negative) factor  
function y = ramp(t,m,ad)  
  N=length(t);
  y=zeros(1,N);
  for i=1:N,
    if t(i) >= -ad,
      y(i)=m*(t(i)+ad);
    end
  endfor
 endfunction 

 function y =ustep(t,ad)
  N=length(t);
  y=zeros(1,N);
  for i=1:N,
    if t(i) >= -ad,
      y(i)=1;
    end
  endfor
 endfunction

 Ts=0.01;
 t= -5:Ts:5;
 y1 = ramp(t,1,3);
 y2 = ramp(t,-2,1);
 y3 = ramp(t,3,0);
 y4 = ustep(t,-3);
 y = y1+y2+y3+y4;

 plot(t,y,'k');
 axis([-5 5 -1 7]);
 grid ;
 title('y(t)=r(t+3)-2r(t+1)+3r(t)-u(t-3)'); 
 
