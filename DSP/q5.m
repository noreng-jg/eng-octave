n=0:1:30


%%Item A
function y=diffeqn(a,x,yn1)
  y(1)=yn1
  for i=1:1:length(x)
    y(i+1)=a*y(i)+x(i)
  end
end

%Item B
degrau=ones(1,31)
impulso(1)=1;
impulso(1,2:31)=0;
r1=diffeqn(1,degrau,0);
r2=diffeqn(1,impulso,0);
figure(1);
stem(n,r1(2:length(r1)));
xlabel('n - amostras')
ylabel('Resposta a \delta[n]')

figure(2)
stem(n,r2(2:length(r2)));
xlabel('n - amostras')
ylabel('Resposta a u[n]')


%Item C
s1=diffeqn(1,ones(1,30),-1);
s2=diffeqn(1,2*ones(1,30),-1);
figure(3);
stem(n,2*s1-s2);



%Item D
s3=diffeqn(0.5, ones(1,30),-1)
s4=diffeqn(0.5,ones(1,30),1/2)
figure(4)
subplot(2,1,1)
stem(n,s3);
title('y[-1]=0')
subplot(2,1,2)
stem(n,s4)
title('y[-1]=1/2')

