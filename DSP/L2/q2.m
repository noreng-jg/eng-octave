
b=[1,1];
a=[0];
num=0;
den=0;

syms z w;

for i=1:1:length(b)
    num=num+b(i)*exp(-1j*w*(i-1));%m=i-1
end;
for i=1:1:length(a)
    den=den+a(i)*exp(-1j*w*(i));%l=i comeca em 1
end;

respostafreq=num/(1+den);

w=0:0.001:2*pi;
figure(1),freqz([1,+1],[1,0],w)
figure(2),freqz([1,-1],[1,0],w)



