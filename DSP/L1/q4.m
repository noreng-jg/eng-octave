%Item A -Sistema 1

n=0:1:19

%Definicao do impulso
function v = impulso(n)
  for i=1:1:length(n)
  if n(i)==0
    v(i)=1;
  else 
     v(i)=0; 
  end
  end
end

%Passando coeficientes de y e x em forma de vetor, respectivamente
figure(1)
h1=filter([1],[1 -0.6],impulso(n));
stem(n,h1,'k')
xlabel('n amostras')
ylabel('h1[n]')
title('Sistema 1')

 
%Item B - Sistema 2

y(1)=0 %n=-1 o sistema está no repouso

for i =-1:1:(19)
  if i==0%Impulso só em 1 quando n é zero
  y(i+3)=y(i+2)*((3/5)^i)+1
  else
  y(i+3)=y(i+2)*((3/5)^i)
  end
end

h2=y %Impulso convoluido com a h2 é a saída y

n1=-2:1:19
figure(2)
stem(n1,h2,'k')
xlabel('n amostras')
ylabel('h2[n]')
title('Sistema 2')

%Item C - 
%Se a entrada é um degrau unitário a saída será o próprio h1 e h2 

%y1=h1
%y2=h2

%Item D - Aplicando o degrau unitario

function v = degrau(n)
  for i =1:1:length(n)
  if n(i)>=0
    v(i)=1;
  else
    v(i)=0;
  end
  end
end  

z1=conv(degrau(n),h1)
z2=conv(degrau(n),h2)

figure(3)
subplot(2,2,1)
stem(n,h1)
title('y_1[n]=h_1[n]*\delta[n] - Resposta ao impulso')
subplot(2,2,2)
stem(n1,h2)
title('y_2[n]=h_2[n]*\delta[n] - Resposta ao impulso')
subplot(2,2,3)
n2=1:1:length(z1)
stem(n,z1(1,length(n):length(z1)))
title('y_1[n]=h_1[n]*u[n] - Resposta ao Degrau')
n2=1:1:length(z2)
subplot(2,2,4)
stem(n,z2(1,length(n1):length(z2)))
title('y_2[n]=h_2[n]*u[n] - Resposta ao Degrau')




