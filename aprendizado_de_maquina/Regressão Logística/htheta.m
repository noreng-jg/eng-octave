function ex = htheta(mtheta,mx)%Recebe a matriz x[3x1] e a matriz de theta[3x1]
 %Ambas entradas como matrizes coluna
  ex=1/(1+exp(-mtheta'*mx));
end 


