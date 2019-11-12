n=0:1:23  

function v = xm(n,M)
   N=12;
   v=sin((2*pi*M*n)/N);
end

  
figure(1)
stem(n,xm(n,4))
xlabel('n')
ylabel('xm[n]- N=4')
grid
figure(2)
stem(n,xm(n,5))
xlabel('n')
ylabel('xm[n]- N=5')
grid
figure(3)
stem(n,xm(n,7))
xlabel('n')
ylabel('xm[n]- N=7')
grid
figure(4)
stem(n,xm(n,10))
xlabel('n')
ylabel('xm[n]- N=10')
grid