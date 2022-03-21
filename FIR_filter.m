clc;clear all;close all;
N=25;
Wn=pi/2;
Wr=rectwin(N);
Wh=hamming(N);
a=(N-1)/2;
for n=0:N-1
if (n~=a)
hd(n+1)=sin((n-a)*Wn)/(pi*(n-a));
else
hd(n+1)=Wn/pi;
end
end
hr=hd.*Wr';
hh=hd.*Wh';
[h1,w1]=freqz(hr);
[h2,w2]=freqz(hh);
plot(w1,abs(h1));
hold on;
plot(w2,abs(h2));
xlabel('w');
ylabel('H(w)');
title('magnitude respone of FIR Filter');
legend('rectwin', 'hamming');