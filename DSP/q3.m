%%Item B

h=1:1:6
x=ones(1,6)
y=conv(x,h)
n=1:1:size(y)(2)
figure(1)
stem(n,y)
grid

%%Item C
function resultado = x(n)
  if n>5 || n<0
    resultado=0;
else
  resultado=1;
  end;
end

function resultado = h5(n)
  if n<-5 || n>0
  resultado =0;
else 
  resultado=n+5;
end;
end;
n1=-5:1:5

%Generalizando funcao para outros valores de n
for i = -5:1:6
  xv(i+6)=x(i)
  h5d(i+6)=h5(i)
endfor


y1=conv(xv,h5d)
n1=-5:1:(length(y1)-6)
figure(2)
stem(n1,y1)
grid


