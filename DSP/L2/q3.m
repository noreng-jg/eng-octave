%%Armazendando imagens
temp1='imgs/owl.jpg';
temp2='imgs/owls.jpg';
imagem1=imread(temp1);
imagem2=imread(temp2);

correlacao=correlation_detector(temp1,temp2);
[maximo,indice]=max(abs(correlacao(:)));%achar valor e posicao linear 
%do maior elemento da matriz de correlação

[row,col]=ind2sub(size(correlacao),indice);
%acha o indice de maxima correlacao

subplot(2,2,1), imshow(imagem1)
subplot(2,2,2), imshow(imagem2)
subplot(2,2,3), imshow(correlacao)
subplot(2,2,4), imshow(imagem2),hold on;
rectangle('Position',[col-55 row-37 55 37],'EdgeColor','y')%A dimensão da primeira imagem contém dim. 37x55