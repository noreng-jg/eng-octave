function Xk = My_DFT(x,N)

M = length(x);

if(N<M)
    disp 'Erro, sua sequ�ncia foi menor do que o tamanho m�nimo';
    
else

x1 = [x zeros(1,N-M)]; %coloca N-M zeros � direita

for n=0:1:N-1;
    for k=0:1:N-1;
        p = exp(2*pi*-j*n*k/N);
        x2(k+1,n+1) = p;
    end
end

Xk=x1*x2;
end
end