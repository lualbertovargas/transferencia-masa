clc
clear

temp=288;
Dab=2.5e-7;
s=0.067;
p=0.5;
c1=22.414;
varz=5e-4;
pas=varz/10;


newvarZ=pas:pas:varz;


Na=((Dab*s*p)./(c1.*newvarZ));


%Reducción al 80% de perdida
PM=30;
tiempo=7200;
area=1.96*10^-3;

wa=PM.*Na*tiempo*area;
Na2=(wa./(PM*tiempo*area));
whatz=((wa*s*p)./(c1.*Na2));


nexttile
plot(newvarZ,Na)
grid on
xlabel('Z')
ylabel('Na');
title('Z vs Na')

nexttile
whatzz=whatz/10;
a=0.001:whatzz:whatz(10);
b=Na2(1,:);
plot(a,b)
grid on
xlabel('Z')
ylabel('Na');
title('Z vs Na')

nexttile
tiempop=7200/10;
tiemponew=tiempop:tiempop:7200;
plot(tiemponew,a)
grid on
xlabel('tiempo')
ylabel('Z');
title('Z vs tiempo')

table(tiemponew(:),a(:),b(:),newvarZ(:))
