clear all;
close all;
clc;

As=50;
Ap=1;
wc1=2*pi*1600/8000;
wc2=2*pi*2300/8000;
ws1=(2*pi*500)/8000;
ws2=(2*pi*3500)/8000;
wt=min(wc1-ws1,ws2-wc2);
wc1=(wc1+ws1)/2;
wc2=(wc2+ws2)/2;
M=ceil(6.6*pi/wt);
if M%2==0
    M=M+1;
end

h=0;

m=(M+1)/2;
for i=1:M
    if i==m
        h(i)=(wc2-wc1)/pi;
        continue;
    end
    h(i)=(0.54+0.46*cos(2*pi*(i-m)/(M-1)))*((sin(wc2*(i-m))-sin(wc1*(i-m)))/(pi*(i-m)));
end
plot(abs(freqz(h)))
title('Impulse Response');