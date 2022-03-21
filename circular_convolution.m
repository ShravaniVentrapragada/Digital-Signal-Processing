%name:Ventrapragada Sai Shravani
%PRN: 17070123120
%EB-3
clc;
clear ;
close all;
%% Part(A)
n=0:1:6;
x=[1 1 1 1];
y=[1 1 1 1];
h1=conv(x,y);
%% Part(B)
c = cconv(x,y,4)
%% Part(C)
n1=0:3;
Xk=fft(x);
Yk=fft(y);
Zk=Xk.*Yk;
Zk=ifft(Zk);
%% Part (D)
n2=0:1:6;
x1=[1 1 1 1 0 0 0];
y1=[1 1 1 1 0 0 0];
c1= cconv(x1,y1,7);

subplot(311)
stem(n,h1)
xlabel('n');
ylabel('x*y');
title('Linear convolution of x and y')

subplot(312)
stem(n1,Zk)
xlabel('n');
ylabel('Zk');
title('Response using DFT and DTFT')

subplot(313)
stem(n2,c1)
xlabel('n');
ylabel('x*y');
title('Circular convolution on padding zeroes');
%% Part(E)
%-------------------------------A---------------------------------
x2=[-3 5 8 6 2 2];
y2=[1 1 4 2 0 0];
n3 = 0:10;
h1=conv(x2,y2);
%-------------------------------B----------------------------------
c2 = cconv(x2,y2,6)
%-------------------------------C----------------------------------
n4=0:5;
Xk=fft(x2);
Yk=fft(y2);
Zk=Xk.*Yk;
Zk=ifft(Zk);
%-------------------------------D------------------------------------
x3 = [-3 5 8 6 2 2 0 0 0];
y3 = [1 1 4 2 0 0 0 0 0];
c3 = cconv(x3,y3,10);
n5 = 0:9;

figure(1);
subplot(311)
stem(n3,h1)
xlabel('n');
ylabel('x*y');
title('Linear convolution of x and y')

subplot(312)
stem(n4,Zk)
xlabel('n');
ylabel('Zk');
title('Response using DFT and DTFT')

subplot(3,1,3)
stem(n5, c3)
xlabel('n');
ylabel('x*y');
title('Circular convolution on padding zeroes')