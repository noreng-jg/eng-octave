function y=filtro_ideal(n,M)
    for i=1:n
        if i==M/2
            y(i)=(sin(pi/4*(0.001)))/(pi*(0.001));
        else
            y(i)=(sin((pi/4)*(i-M/2)))/(pi*(i-M/2));
        end
    end
end