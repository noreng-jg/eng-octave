%item a
janela=hamming(32)
b=fir1(31,1/4,'low')';
figure();
%Analise dos lobulos
freqz(janela.*b);

%item b
[Y y w]=resposta_filtro(b,janela,true)
delta=max(abs(Y))-1;%Valor maximo vertical do filtro

[M ip]=max(abs(Y))%Acha w1 relativo a frequancia de passagem
wp=w(ip);

%achar pra qual posicao frequencia ocorre reduz-se o sinal a delta de magnitude
for i=1:length(Y)
if abs(Y(i))<=delta
is=i
break
end
end

ws=w(is)%freq de supressao

deltaw=ws-wp;
A=-20*log10(delta);%atenuacao em decibeis


%item c
n=0:4096;
x=sin(n*(pi/6))+sin(n*(pi/3));
y=conv(h,x);
L=4096;
Y=fft(y,L);
figure();
subplot(2,1,1)
plot(w(1:L/2),abs(Y(1:L/2)))
ylabel('|Y(e^{j\omega})|');
xlabel('\omega (x \pi rad)')
subplot(2,1,2);
plot(w(1:L/2),phase(Y(1:L/2)));
ylabel('\angle Y(e^{j\omega})');
xlabel('\omega (x \pi rad)')

