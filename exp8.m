clear all;
close all;
clc;

h = 0;
N = 999;
w = 0:pi/512:pi-pi/512;
for i = 1:N
  if i == (N+1)/2
    h(i) = 0
    continue;
  end
  h(i) = (cos(pi*(i-((N+1)/2)))/(i-((N+1)/2)))*(0.54 + 0.46*cos(2*pi*(i-((N+1)/2))/(N-1)))
 % h(i) = (cos(pi*(i-((N+1)/2)))/(i-((N+1)/2)));
 end
plot(abs(freqz(h)))
hold on;
plot(abs(j*w))
title('Differentiator using Hamming Window')