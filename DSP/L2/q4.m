x=ones(1,19);%degrau
g=5;
delay=5;
x=audioread('dark.wav');
%testando o degrau
y=allpass(x,delay,g,true);