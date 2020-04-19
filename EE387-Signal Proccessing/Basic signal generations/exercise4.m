%Assume a system with the following impulse response: 
 %h(n)   = (0.5)n       for 0<= n < 4       
 %        = 0            elsewhere 
% Determine the input x (n) that will generate the output sequence y(n) = {1, 2, 2.5, 3, 3, 3, 2, 1,0...}.  Plot h(n), y (n) and x (n) in one figure. 

clear all;

h=zeros(1,5);
nh=[0:length(h)-1];

for i = 0:4
  if i < 4
    h(i+1) = 0.5 .^ i;
   end
end   

y=[1 2 2.5 3 3 3 2 1 0 0 0 0];
ny=[0:length(y)-1];

x=deconv(y,h);
nx=[0:length(x)-1];

subplot(3,2,1)
stem(nx,x,'d','filled')
xlabel('n');ylabel('x(n)')

subplot(3,2,2)
stem(nh,h,'filled')
xlabel('n');ylabel('h(n)')

subplot(3,2,3)
stem(ny,y,'filled')
xlabel('n');ylabel('y(n)')

