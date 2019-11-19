clear all;
clc;
n = [0:99];
x = cos(0.48.*pi.*n) + cos(0.52.*pi.*n);
xp = [x(1:10), zeros(1,90)];
subplot(2,2,1);
stem(x(1:10));
title('10 point Sequence');

d = 100;
W = exp(1)^(-i*2*pi/d);
w = ones(d,d);
for k=1:d
  for j=1:d
    w(k,j) = W^((k-1)*(j-1));
  end
end

dft_xp = w*(xp');
subplot(2,2,2);
stem(abs(dft_xp));
title('DFT of zero padded sequence');
dft_x = w*(x');
subplot(2,2,3);
stem(x);
title('100 point sequence');
subplot(2,2,4);
stem(abs(dft_x));
title('DFT of 100 point sequence');