% Ventrapragada Sai Shravani
% PRN: 17070123120
% EB-3
clc
clear all;
close all;
%% Question 1
n=-3:1:7;
x=[0 0 0 2 0 1 -1 3 0 0 0];
%% Question 2
n1=n+2;
n2=n-1;
n3=-n;
n4=-n+1;
%%
figure('name', 'Shravani_exp1');
subplot(331)
stem(n,x)
xlabel('n');
ylabel('x')
title('Plot a discrete signal');


subplot(332)
stem(n1,x)
xlabel('n1');
ylabel('x')
title('Plot of discrete signal (y1)');


subplot(333)
stem(n2,x)
xlabel('n2');
ylabel('x')
title('Plot of discrete signal (y2)');

subplot(334)
stem(n3,x)
xlabel('n3');
ylabel('x')
title('Plot of discrete signal (y3)');

subplot(335)
stem(n4,x)
xlabel('n4');
ylabel('x')
title('Plot of discrete signal (y4)');
%% Question 3
% y1 is delayed by 2
% y2 is advanced by 1.
% y3 is folded of the original signal.
% y4 is a version of y3 shifted by +1.
