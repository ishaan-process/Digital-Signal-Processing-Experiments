x0 = [1 2 3 4 0 0];
x2 = [5 6 7 8 0 0];
x3 = [9 10 0 0 0 0];

%Overlap Add Method

y0 = ifft(fft(x0) .* fft(hzp)) ;
y1 = ifft(fft(x1) .* fft(hzp)) ;
y2 = ifft(fft(x2) .* fft(hzp)) ;

for i=1:2
  y1(i) = y1(i) + y0(i+4);
  y2(i) = y2(i) + y1(i+4);
end

y=0;
count = 1;
for i=1:4
  y(count)=y0(i);
  count++;
end

for i=1:4
  y(count)=y1(i);
  count++;
end

for i=1:4
  y(count)=y2(i);
  count++;
end
overlap_add=y
