clear all;
clc;
x = [1 2 2 1];
Nx = length(x);
h = [1 -1 -1 1];
Nh = length(h);
Ny = Nx + Nh -1;
xz = [x zeros(1, Ny-Nx)];
hz = [h zeros(1, Ny-Nh)];
y = zeros(1,Ny);

for n=0:Ny-1
    m=0:Ny-1;
    n1 = mod(n-m, Ny);
    hs = hz(n1 +1);
    xh = xz.*hs;
    y(n+1) = sum(xh);
end;

n=0:Ny-1;
subplot(1,3,1);
stem(n,xz,'filled');
xlabel('n');
title('x(n)');
subplot(1,3,2);
stem(n,hz,'filled');
xlabel('n');
title('h(n)');
subplot(1,3,3);
stem(n,y,'filled');
xlabel('n');
title('y(n)');