janelaa=rectwin(21);
janelab=hamming(21);
janelac=rectwin(121);

hd1=filtro_ideal(21,21)';
hd2=filtro_ideal(121,121)';

%Figuras 1 e 2 -> Janela Retangular com N=21
resposta_filtro(hd1,janelaa, true);
%Figuras 3 e 4 -> Janela Hamming com N=121
resposta_filtro(hd1,janelab,true);
%Figuras 5 e 6 -> Janela Retangular com N=121
resposta_filtro(hd2,janelac,true);
