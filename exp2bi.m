x = [1 2 3 4 5 6 7 8 9];
N = length(x);
n = 0:N-1;

%right-shift
x1 = mod(n-3,N);
y1 = x(x1+1);

%left-shift
x2 = mod(n+3, N);
y2 = x(x2+1);

subplot(2,2,1);
stem(n,x,'filled');
grid on;
title('Original Sequence');
xlabel('n');
ylabel('x(n)');

subplot(2,2,3);
stem(n,y1,'filled');
grid on;
title('Right Shifted Sequence');
xlabel('n');
ylabel('x(n-3)');

subplot(2,2,4);
stem(n,y2,'filled');
grid on;
title('left Shifted Sequence');
xlabel('n');
ylabel('x(n+3)');
