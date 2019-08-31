[X,y]=load_data;

res=15;
tau=[0.01,0.05,0.1,0.5,1,5];


%Leva um certo tempo para calcular, quanto menor a resolução
%menor tempo computacional

for i=1:1:length(tau)
plot_lwlr(X, y, tau(i), res)
end
