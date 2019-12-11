function [Y,y,vw]=resp_filter(hd,janela, ploton)

    h=hd.*janela;
    H=fft(h, 4096);
    w=(0:4096-1).*(2/(4096));
    
    Y=H;
    vw=w;
    y=h;
    
    if ploton==true
    %plot discreto de h[n]=w[n].h_d[n]
        figure();
        discrete_plot(h);

        figure();
        subplot(2,1,1)
        plot(w(1:4096/2),abs(H(1:4096/2)))
        ylabel('|H(e^{j\omega})|');
        xlabel('\omega (x \pi rad)')
        subplot(2,1,2);
        plot(w(1:4096/2),phase(H(1:4096/2)));
        ylabel('\angle H(e^{j\omega})');
        xlabel('\omega (x \pi rad)')
    end
end