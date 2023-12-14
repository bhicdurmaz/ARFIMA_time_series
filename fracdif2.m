function fracdif2(n)
alpha=2/4;
betha=alpha;
h=1/(n);
for i=1:n+1;
    t(i)=((i-1)*1/(n));
end;

for i=1:n+2;
   if i==1;
        g(i)=1;
    else g(i)=g(i-1)*((i-1)-betha-1)/(i-1);
   end;
    i=i+1;
end;
g;
for i=1:n+2;
   if i==1;
        ww(i)=(betha/2);
    else ww(i)=g(i-1)*((2-betha)/2)+(betha/2)*g(i);
   end;
    i=i+1;
end;
ww;

for i=3:n+1;
    E(i)=(sec(betha*pi/2)/2)*ww(i+1);
end;
E(1)=(sec(betha*pi/2))*ww(2);
E(2)=(sec(betha*pi/2)/2)*(ww(1)+ww(3));

for i=1:n+1;
    H(i,i)=E(1);
end;
for l=1:n+2;
for k=1:n-l+1;
        H(k,k+l)=E(l+1);
    end;
    for k=1:n-l+1;
        H(k+l,k)=E(l+1);
    end;
end;
H
H=H/(h^(betha));

hh=H*t(1:n+1)';

for i=1:n+1;
    ex(i)=(((i-1)*1/(n))^(1-alpha))/gamma(2-alpha);
end;
ex=ex';
e1=ex-hh;


j=0;
for i=1:n+1;
    if i==1;
        C(i)=1;
    else C(i)=C(i-1)*((j-alpha-1)/j);
    end;
    j=j+1;
end;

for i=1:n+1;
    y(i)=C(1:i)*t(i:-1:1)';
end;
y=y';
e2=ex-y;

fmat1=abs(e1);
fmat2=fmat1.*fmat1*h;
fmat3=sum(fmat2,2);
fmat4=fmat3.^(1/2);
sumerror1=max(max(abs(e1)))
sumerror2=max(abs(fmat4))


fmat1=abs(e2);
fmat2=fmat1.*fmat1*h;
fmat3=sum(fmat2,2);
fmat4=fmat3.^(1/2);
sumerror1=max(max(abs(e2)))
sumerror2=max(abs(fmat4))



  