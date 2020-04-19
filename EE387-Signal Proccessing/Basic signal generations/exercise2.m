% plot x(n), h(n) and y(n) as subplots in the same figure.
%x(n) = { 1,2,3,4,5 }, h(n) = {1}  
clear all;

x=[1 2 3 4 5];
h=[1];
nx=[0:length(x)-1];
nh=[0:length(h)-1];

y=conv(x,h);
ny=[0:length(y)-1];

subplot(3,2,1)
stem(nx,x,'d','filled')
xlabel('\itn');ylabel('\itx\rm(\itn\rm)')

subplot(3,2,2)
stem(nh,h,'filled')
xlabel('\itn');ylabel('\ith\rm(\itn\rm)')

subplot(3,2,3)
stem(ny,y,'filled')
xlabel('\itn');ylabel('\ity\rm(\itn\rm)')
title('y(n)=x(n)*h(n)')
