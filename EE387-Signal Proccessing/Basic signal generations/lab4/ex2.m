clear all;
close all;
 
N=4;
 
Fp=1000;
 
Wp=2*pi*Fp;
 
[num,den]=butter(N,Wp,'s');
fil=tf(num,den);
bode(fil);