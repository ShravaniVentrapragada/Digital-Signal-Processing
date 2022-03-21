f1=50;
f2=100;
f3=150;
Fm=f3;
tf=0.04;
t=0:0.0001:tf;
x= cos(2*pi*f1*t)+cos(2*pi*f2*t)+cos(2*pi*f3*t);
subplot(2,2,1)
plot(t,x)
xlabel('t');
ylabel('x');
title('original signal');
% for Fs<2Fm
Fs1=250;
n1=0:tf*Fs1;
x1=cos(2*pi*f1*(n1/Fs1))+cos(2*pi*f2*(n1/Fs1))+cos(2*pi*f3*(n1/Fs1));
subplot(2,2,2)
stem(n1,x1);
hold on
plot(n1,x1);
xlabel('n');
ylabel('x1');
title('signal when Fs<2Fm');
% for Fs=Fm
Fs2=300;
n2=0:tf*Fs2;
x2=cos(2*pi*f1*(n2/Fs2))+cos(2*pi*f2*(n2/Fs2))+cos(2*pi*f3*(n2/Fs2));
subplot(2,2,3)
stem(n2,x2);
hold on;
plot(n2,x2)
xlabel('n');
ylabel('x2');
title('signal when Fs=2Fm');
% for Fs>2Fm
Fs3=2700;
n3=0:tf*Fs3;
x3=cos(2*pi*f1*(n3/Fs3))+cos(2*pi*f2*(n3/Fs3))+cos(2*pi*f3*(n3/Fs3));
subplot(2,2,4)
stem(n3,x3);
hold on;
plot(n3,x3);
xlabel('n');
ylabel('x3');
title('when Fs>2Fm');
BB=[];
A=440;
j=0;
for i=-9:3
j=j+1;
B=2^(i/12);
AA=440*B;
BB=[BB round(AA)];
end
C=BB(1);
D=BB(3);
E=BB(5);
F=BB(6);
G=BB(8);
B=BB(12);
CC=BB(13);
freq=[C D E F G B A CC];
freq_str=['C' 'D' 'E' 'F' 'G' 'B' 'A' 'CC'];
% period=ceil((1./freq)*1000000);
% tone=ceil(period/2.5);
freq_max=max(freq);
Fs1=8000;
Ts=1/Fs1;
t=0:Ts:0.5;
r=0;
for i=1:length(freq)
s = (i)*sin(2*pi*freq(i)*t);
sound(s)
pause(0.5)
N=length(s);
c = fft(s)/N;
y=fftshift(c);
p = abs(y);
f = (-N/2:1:N/2-1)*Fs1/N;
if (i<=8)
datacursormode on
subplot(8,2,i*2-1)
plot(t(1:50),s(1:50))
xlabel('Time');
ylabel('Amplitude');
title(['Time domain signal of' ' ' freq_str(i) '=' num2str(freq(i)) '
' 'Hz']);
subplot(8,2,i*2)
plot(f,p)
axis([-1000 1000 0 max(p)])
xlabel('Frequency');
ylabel('Magnitude');
title('Frequency domain analysis');
datacursormode off
else
r=r+1;
subplot(4,2,r*2-1)
plot(t(1:100),s(1:100))
xlabel('Time');
ylabel('Amplitude');
title(['Time domain signal of' ' ' freq_str(i) '=' num2str(freq(i)) '
' 'Hz']);
subplot(4,2,r*2)
plot(f,p)
axis([-1000 1000 0 max(p)])
xlabel('Frequency');
ylabel('Magnitude');
title('Frequency domain analysis');
end
end
pause(1)
EE=[C C G G A A G F F E E D D C G G F F E E D G G F F E E D];
figure;
for k=1:length(EE)
s2 = 2*sin(2*pi*EE(k)*t);
sound(s2)
pause(0.5)
if (mod(k,7)==0)
pause(0.3)
end
N2=length(s2);
c2 = fft(s2)/N2;
y2=fftshift(c2);
p2 = abs(y2);
f2 = (-N2/2:1:N2/2-1)*Fs1/N2;
subplot(211)
plot(f2,p2)
axis([-1000 1000 0 1])
hold on
xlabel('Frequency');
ylabel('Magnitude');
title('Frequency domain analysis');
subplot(212)
plot(t(1:50),s2(1:50))
hold on
xlabel('Time');
ylabel('Amplitude');
title('Time domain signal');
end
FF=[G A F E F G D E F E F G G A G F E F G D G E C];
%london bridge is falling down
figure;
for v=1:length(FF)
s3 = 2*sin(2*pi*FF(v)*t);
sound(s3)
pause(0.5)
if (mod(v,7)==0)
pause(0.3)
end
N3=length(s3);
c3 = fft(s3)/N3;
y3=fftshift(c3);
p3 = abs(y3);
f3 = (-N3/2:1:N3/2-1)*Fs1/N3;
subplot(211)
plot(f3,p3)
axis([-1000 1000 0 1])
hold on
xlabel('Frequency');
ylabel('Magnitude');
title('Frequency domain analysis');
subplot(212)
plot(t(1:50),s3(1:50))
hold on
xlabel('Time');
ylabel('Amplitude');
title('Time domain signal');
end
