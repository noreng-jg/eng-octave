function y=discrete_plot(resp)

for i=1:length(resp)
    magnitude(i)=abs(resp(i));
    fase(i)=atan(imag(resp(i))/real(resp(i)));
end
    subplot(2,1,1);
    stem(magnitude)
    xlabel('n')
    ylabel('amplitude')
    subplot(2,1,2);
    stem(fase)
    xlabel('n')
    ylabel('fase')
end