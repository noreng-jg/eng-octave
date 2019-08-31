function final = wi(x,xi,tau) %Recebe dois vetores [3x1]
  final = exp(-(norm(x-xi))^2/(2*(tau^2)));
end
