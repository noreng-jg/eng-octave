function y = reverb(filename, soundon)

[x fs] = audioread(filename);

%Achando os respectivos deslocamentos de amostras baseado nos tempos de
%atraso

%tempo de amostragem
Ts=1/fs;
g1=0.05;
g2=0.008;
g3=0.002;
k1=round((15*10^-3)/Ts);
k2=round((40*10^-3)/Ts);
k3=round((100*10^-3)/Ts);

ap1=allpass(x,k1,g1,false);
ap2=allpass(ap1,k2,g2,false);
ap3=allpass(ap2,k3,g3,false);
x1=0.5*x;

%Redefinindo os tamanhos de acordp com maior sequência de convolução.
dif3ap1=length(ap3)-length(ap1);
dif3ap2=length(ap3)-length(ap2);
dif3x1=length(ap3)-length(x1);
%Redefinindo sinais
ap1=horzcat(ap1.',zeros(1,dif3ap1));
ap2=horzcat(ap2.',zeros(1,dif3ap2));
x1=horzcat(ap3.',zeros(1,dif3x1));

for i=1:1:length(ap3)
   y(i)=ap3(i)+ap2(i)+ap1(i)+ x1(i);
end

if soundon == true
    sound(y, fs);
end