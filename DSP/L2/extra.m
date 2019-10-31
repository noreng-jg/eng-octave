
%%conversao de funcoes de transf. para simbolico
z=tf('z')
h2z=z^-1 +1
[num,den] = tfdata(h2z);
syms z
H_sym = poly2sym(cell2mat(num),z)/poly2sym(cell2mat(den),z);
h_inv = iztrans(H_sym);

