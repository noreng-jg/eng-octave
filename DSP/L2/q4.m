x=ones(1,19);%degrau
g=0.05;
delay=200;
x=audioread('sound/dark.wav');
%testando o degrau
y=allpass(x,delay,g,false);
k=length(y)-length(x);
x=horzcat(x.',zeros(1,k));