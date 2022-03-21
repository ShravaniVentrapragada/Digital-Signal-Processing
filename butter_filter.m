%name:Ventrapragada Sai Shravani
%PRN: 17070123120
%EB-3
clc;
clear ;
close all;
N=round(0.5*log(1/0.2^2/1/0.8^2-1)/log(0.2/0.2*pi))
Wn=0.75;
[b,a] = butter(N,Wn,'s');
[z,p,k]=butter(N,Wn,'s');
h=tf(b,a)
[num,den]=bilinear(b,a,1)
h1=tf(num,den,1)