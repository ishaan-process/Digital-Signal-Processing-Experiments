clc;
clear all;
close all;
M = 25;
w=-pi:0.01:pi;

n1 = 0:M-1;
tau = (M-1)/2;
H = -1j*exp(-1j*tau*w).*(w>0) + 1j*exp(-1j*tau*w).*(w<0);

Q = [];
for n = 0:M-1
 f = @(w1) 1j*exp(-1j*(tau-n)*w1);

        Q = [integral(f,-pi,0) Q];
end
Q1 = [];
for n = 0:M-1
 f = @(w1) -1j*exp(-1j*(tau-n)*w1);

        Q1 = [integral(f,0,pi) Q1];
end
hd = (1/2*pi)*(Q1+Q);
subplot(221);
stem(n1,hd);

Wn = hanning(M)';
subplot(224);
stem(n1,Wn);
h = hd.*Wn;
subplot(222);
stem(n1,h);
Hw = freqz(h,1,w);
Hrw = exp(-1j*(pi/2-tau*w)).*Hw;
subplot(223);

plot(w/pi,Hrw);