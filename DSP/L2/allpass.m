function y = allpass(x, k, g, ploton)
b=horzcat(g,zeros(1,k));
b=horzcat(b,1);

%Concatenando para forma coef. da eq. de dif.
a=horzcat(1,zeros(1,k));
a=horzcat(a,-g);

%Aplicando o filtro pra achar a funcão de sistema h
h=filter(b,a,x);
y=conv(x,h);
n1=1:1:length(y);

if (ploton==true)
    subplot(2,1,1)
    stem(x)
    ylabel('x[n]')
    xlabel('n')
    subplot(2,1,2)
    stem(n1,y)
    ylabel('y[n]')
    xlabel('n')
end

end