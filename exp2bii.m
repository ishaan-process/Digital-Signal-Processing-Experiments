x = [1 2 3 4 5 6 7 8 9];
N = length(x);
n = 0:N-1;

subplot(2,2,1);
stem(n,x,'filled');
grid on;
title('Input Sequence');
xlabel('n');
ylabel('x(n)');

k = 0:N-1;
wn = exp(-j*2*pi*n'*k/N);
y = x*wn;
subplot(2,2,2);
stem(n, abs(y), 'filled');
grid on;
title('DFT of Input Sequence');
xlabel('k');
ylabel('X(k)');

x1 = mod(-n,N);
y1 = x(x1+1);
subplot(2,2,3);
stem(n,y1,'filled');
grid on;
title('Reversed Sequence');
xlabel('n');
ylabel('x(-n)');

wn = exp(-j*2*pi/N*n'*k);
y2 = y1*wn;
subplot(2,2,4);
stem(n, abs(y2), 'filled');
grid on;
title('DFT of the Reversed Sequence');
xlabel('k');
ylabel('X(k)');