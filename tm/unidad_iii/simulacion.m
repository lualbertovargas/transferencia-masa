t1=36;
t2=21;

t=(t1+t2)/2

Dab=(2.29)*10^-15;
p=0.1:0.1:1;aa=287.058;Ree=10294;Sc=0.5339;sh=40.2774;r=7; 
u=1.7E-5; ky=1.49125;pb=1.171;ya=0.024539;ys=0.014463;
R=p/(r*t);
Re=aa

Scc=u./(p.*Dab);
Sc
Ree
Sh=40.2774
ky
ya
ys

table(t,Re,pb,u,Sc,Ree,sh,ky,ya,ys)
%Graficas respecto a la temperatura promedio
pasos=10;
tt=t/pasos;
vectort=tt:tt:t;


%Gráficas
parRe=Re/pasos;
vectorRe=parRe:parRe:Re;

parPb=pb/pasos;
vectorPb=parPb:parPb:pb;

vectory=ya:-0.001:ys



plot(vectort,Scc,vectort,vectorRe)
xlabel('Temperatura')
ylabel('Sc - Re')
legend('Sc','Re')



