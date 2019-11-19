clc;
clear all;
 close all;
 
M = 205;
n = 0:M-1;
f = 8000;
k = [18 20 22 24 31 34 38];
x = sin(2*pi*697*n/f) + sin(2*pi*1209*n/f);
fft_x_auto = fft(x,M);
x1 = [x 0];
v = zeros(1, M+3)
for p = 1:7
  for l = 1:M+1 
    v(l+2) = x1(l) + 2*cos(2*pi*k(p)/M).*v(l+1) - v(1);
  end
  fft_x_man(k(p)+1) = v(M+3) - exp(-1i*2*pi*k(p)/M).*v(M+2);
 end
stem(abs(fft_x_auto));
axis([0 205 0 120])
hold on;
stem(abs(fft_x_man), 'black');
hold off;
legend({'DFT Using FFT', 'DFT using Goertzel'}, 'location', 'best');
  