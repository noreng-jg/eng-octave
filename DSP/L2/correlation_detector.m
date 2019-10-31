function Corr = correlation_detector(template_name, reference_name)
imagem1=imread(template_name);
imagem2=imread(reference_name);

%%cast para gray
imagem1=rgb2gray(imagem1);
imagem2=rgb2gray(imagem2);

Corr=normxcorr2(imagem1,imagem2);

close all; figure;










      