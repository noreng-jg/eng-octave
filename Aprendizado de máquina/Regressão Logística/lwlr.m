function y = lwlr(X_train, y_train, x, tau)
  
  x=[1;x]'; %Deixando a matriz x com a mesma dimens�o de x_train[i]
  X_train(:,2:3)=X_train(:,1:2); %desloca pra direita
  X_train(:,1)=1; %insere vetor coluna com uns
  
  %Criacao da matriz D e da matriz z
  d=zeros(69);
  z=zeros(69,1);
  
  lambda=0.001; %Defini��o de lambda
  theta=[0;0;0]; %Inicializa��o de theta
  
  epocas=15;%Quantidade de itera��es para convergencia de theta
  
for j=1:1:epocas
  %Itera��o dos c�lculos da matriz D e da matriz z
  for i=1:1:length(X_train)
    d(i,i)=(-wi(x,X_train(i,:),tau)*htheta(theta,X_train(i,:)'))*(1-htheta(theta,X_train(i,:)'));
    z(i)=wi(x,X_train(i,:),tau)*(y_train(i)-htheta(theta,X_train(i,:)'));
  end
  
  %C�lculo da Hessiana
  H=X_train'*d*X_train -lambda*eye(3); % A resultante de X'DX ser� de ordem 3x3, logo
  %a matrix identidade deve ser de ordem 3
  
  %C�lculo do Gradiente
  nablal=X_train'*z - lambda*theta ;
  theta=theta-inv(H)*nablal; %Atualiza��o dos valores de theta
  
end 
size(x);
size(theta);

e=(1/(1+exp(-theta'*x'))); 
 
if e >=0.5
  y=1;
else 
  y=0;

 
end
%%% YOUR CODE HERE