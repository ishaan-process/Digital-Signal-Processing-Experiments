x = [ 7/8 zeros(1,19)];
y=0;
y1=0;
B=4;
for i=1:20
    x1=-1/2*y1;
    k=0
    x2=abs(x1)+2^(-B-1);
    for j=1:B
        k=k+fix(x2*2)*(2^(-j));
        x2=x2*2-fix(x2*2);
    end
    if x1<0
        k=k*-1;
    end
    y(i)=k+x(i);
    y1=y(i);
end
stem(y)