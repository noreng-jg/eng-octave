%Leitura do sinal de audio
[x fs]=audioread('sound/tel.wav');

%Analise da transformada de Fourier de magnitude e fase
% e Aplicacao da funcao criada de plotagem
plot_mag_phase(x,fs);

%Plotagem normalizada
figure(2);
freqz(x);

%Análise do espectrograma
figure(3);
spectrogram(x,400,300,[],fs,'yaxis')
title('Espectrograma')

%Sequencia de digitação = 8675309



