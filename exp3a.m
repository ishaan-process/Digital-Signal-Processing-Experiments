clear all;
N=4;
x1 = [1 2 2 1];
x2 = [1 -1 -1 4];
y = zeros(1,N);
for n=0:N-1
    m=0:N-1
     n1 = mod(n-m, N);
     xs2 = x2(n1+1);
     x12 = x1.*xs2;
     y(n+1) = sum(x12);
end
n=0:N-1;
subplot(1,3,1);
stem(n,x1,'filled');
xlabel('n');
title('x1(n)');
subplot(1,3,2);
stem(n,x2,'filled');
xlabel('n');
title('x1(n)');
subplot(1,3,3);
stem(n,y,'filled');
xlabel('n');
title('y(n)');