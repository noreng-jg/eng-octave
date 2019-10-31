%%Item A
z=tf('z')
h1z=tf([1,0,0],[1,-0.9,0.81],0.1)
%pzplot(h1z)

%%Item B
l=1000;
dw=(2*pi)/l;
w=0:0.001:2*pi;
%freqz([1,0,0],[1,-0.9,0.81],w)

%Item C

[num,den] = tfdata(h1z);
syms z
H_sym = poly2sym(cell2mat(num),z)/poly2sym(cell2mat(den),z);
h_inv = iztrans(H_sym);