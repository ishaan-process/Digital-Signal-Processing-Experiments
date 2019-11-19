clear;
n=1:100;
k=1:100;
xn(2,:)=cos(0.48*pi*n)+cos(0.52*pi*n);
xn(1,:)=[xn(2,1:10),zeros(1,90)];
N=100;
w=2*pi/N;

for i=1:2
    Xk(i,:)=xn(i,:)*exp(-1i*(n'*w*k));
    Xabs(i,:)=abs(Xk(i,:));
    subplot(2,2,2*i-1)

stem(n,xn(i,:),'black','filled','MarkerSize',4);
  xlabel('time');
  title('signal')
  subplot(2,2,2*i)
  
stem(k,Xabs(i,:),'black','filled','MarkerSize',4);
xlabel('discrete frequency(2*k/pi*N)');
title('DFT of signal');
end
  