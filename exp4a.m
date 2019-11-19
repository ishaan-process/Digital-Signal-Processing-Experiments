clc;
clear all;

%Overlap Save Method

x = [1 2 3 4 5 6 7 8 9 10];
h = [1, 0, -1];
hzp = [1 0 -1 0 0 0];

%Normal Convolution
w1 = conv(x,h);

x0 = [0 0 1 2 3 4];
x1 = [3 4 5 6 7 8];
x2 = [7 8 9 10 0 0];

y0 = ifft(fft(x0) .* fft(hzp)) ;
y1 = ifft(fft(x1) .* fft(hzp)) ;
y2 = ifft(fft(x2) .* fft(hzp)) ;

y=0;
count = 1;
for i=3:6
  y(count)=y0(i);
  count++;
end

for i=3:6
  y(count)=y1(i);
  count++;
end

for i=3:6
  y(count)=y2(i);
  count++;
end
overlap_save=y