%% Experiment 2
%
% Ventrapragada Sai Shravani
% 17070123120
% EB-3
%% Source code
clc
clear all;
close all;
%% Question 1
n=0:1:2;
x=cos(n);
n1=0:1:4;
h=[3 -1 -2 3 1];
m=length(x);
p=length(h);
for i=1:(m+p-1)
    y(i)=0;
    for j=1:m
        if (i-j+1>0 && i-j+1<=p)
            y(i)=y(i)+x(j)*h(i-j+1);
        end
    end
end
figure(1);
subplot(311)
stem(n,x)
title('Original Signal')
xlabel('n')
ylabel('x')
subplot(312)
stem(n1,h)
title('Impulse Signal')
xlabel('n1')
ylabel('h')
subplot(313)
n2=0:length(y)-1;
stem(n2,y)
title('convoluting two impulse respose')
xlabel('n4')
ylabel('convoluted signal')
%% Question 2
n3=0:1:8;
n4=0:1:10;
h1=[3 -1 -2 0 0];
h2=[0 0 0 3 1];
h=conv(h1,h2);
y1=conv(h,x);
figure(2);
stem(n4,y1)
subplot(311)
stem(n,x)
title('Original Signal')
xlabel('n')
ylabel('x')
subplot(312)
stem(n3,h)
title('Impulse Signal')
xlabel('n1')
ylabel('h')
subplot(313)
stem(n4,y1)
title('cascaded two impulse respose')
xlabel('n4')
ylabel('convoluted signal')
%% Question 3
n=0:1:2;
n1=0:1:4;
h1=[3 -1 -2 0 0];
h2=[0 0 0 3 1];
h=h1+h2;
y1=conv(x,h);
figure(3);
subplot(3,1,1)
stem(n,x)
title('Original Signal')
xlabel('n')
ylabel('x')
subplot(3,1,2)
stem(n1,h);
xlabel('n');
ylabel('h(n)');
title('impulse response');
subplot(3,1,3)
stem(0:length(y1)-1,y1);
xlabel('n');
ylabel('y2(n)');
title('parallel conv result');