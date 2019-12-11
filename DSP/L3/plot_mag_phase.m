function y = plot_mag_phase(xn,Fs)
    L=length(xn);
    NFFT = 2^nextpow2(L);
    Fs=8000;
    Y=fft(xn,NFFT)/L;
    mag=2*abs(Y(1:NFFT/2+1));
    phase=unwrap(angle(Y(1:NFFT/2+1)))/5000*180/pi;
    f = Fs/2*linspace(0,1,NFFT/2+1);
    subplot(2,1,1);
    plot(f,mag);
    title('Gr�ficos da magnitude e fase');
    xlabel('Frequ�ncia (Hz)');
    ylabel('|X(f)|');
    subplot(2,1,2);
    plot(f,phase);
    xlabel('Frequ�ncia (Hz)');
    ylabel('Fase (�)');
end