clear all;
close all;
Fp=1000;Fs=5000;Fsample=10000;

Wp=Fp/Fsample; 
Ws=Fs/Fsample; 

[N,Wn]=buttord(Wp,Ws,3,30);
[zeros_,poles_,scale_]=butter(N,Wn);
[num,den]=butter(N,Wn);

tf=zpk(zeros_,poles_,scale_);
bode(tf);
figure
freqz(num,den,5000,Fsample)