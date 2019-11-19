clear all;
clc;
w = 0:0.01:2*pi;
Xw = 1+ exp(-j*w)+exp(-j*2*w)+exp(-j*3*w);

% 4 point DFT

xn = ones(1,4);
N=4;
n=0:N-1;
k=0:N-1;
Wn = exp(-j*2*pi*n'*k/N);
Xk = xn*Wn;
subplot(2,2,1);
plot(w, abs(Xw));
xlabel('frequency');
ylabel('magnitude');
title('DTFT');
subplot(2,2,2);
plot(w, abs(Xw));
hold on;
stem(2*pi*k/N,abs(Xk),'filled');
xlabel('2*pi*k/4');
ylabel('magnitude');
title('4 point DFT');

% 8 point DFT

clear N;
xn = [ones(1,4),zeros(1,4)];
N=8;
n=0:N-1;
k=0:N-1;
Wn = exp(-j*2*pi/N*n'*k);
Xk = xn*Wn;
subplot(2,2,3);
plot(w, abs(Xw));
hold on;
stem(2*pi*k/N, abs(Xk), 'filled');
xlabel('2*pi*k/8');
ylabel('magnitude');
title('8 point DFT');

% 16 point DFT

clear N;
xn = [ones(1,4),zeros(1,12)];
N=16;
n=0:N-1;
k=0:N-1;
Wn = exp(-j*2*pi/N*n'*k);
Xk = xn*Wn;
subplot(2,2,4);
plot(w, abs(Xw));
hold on;
stem(2*pi*k/N, abs(Xk), 'filled');
xlabel('2*pi*k/16');
ylabel('magnitude');
title('16 point DFT');
