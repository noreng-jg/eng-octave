n=0:1:9

function res = xk(n,k)
wk=(2*pi*k)/5
res=sin(wk*n)
end;

subplot(2,2,1)
stem(n,xk(n,1))
xlabel('n')
ylabel('xk[n] : K=1')
subplot(2,2,2)
stem(n,xk(n,2))
xlabel('n')
ylabel('xk[n] : K=2')
subplot(2,2,3)
stem(n,xk(n,4))
xlabel('n')
ylabel('xk[n] : K=4')
subplot(2,2,4)
stem(n,xk(n,6))
xlabel('n')
ylabel('xk[n] : K=6')
