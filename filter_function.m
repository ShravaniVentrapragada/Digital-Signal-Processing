n=0:3;
b1=[0.5 1 2];
a1=[1];
x=[1 1 1 1];
y1=filter(b1,a1,x);
a2=[1 -0.8];
b2=[2];
y2=filter(b2,a2,x);
a3=[1 -0.8];
b3=[0 2];
y3=filter(b3,a3,x);
subplot(311)
stem(n,y1)
title('question 1')
xlabel('n')
ylabel('y(1)')
subplot(312)
stem(n,y2)
title('question 2')
xlabel('n')
ylabel('y(2)')
subplot(313)
stem(n,y3)
title('question 3')
xlabel('n')
ylabel('y(3)')
