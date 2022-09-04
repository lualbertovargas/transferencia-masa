clc
clear
fprintf(2,'Universidad de las Fuerzas Armadas ESPE ');
fprintf('\nTransferencia de Masa');


%ingreso datos
z = input('\nIngrese el espesor en metros (m) ');
Dab = input('\nIngrese difusividad (m2/s)');
a=0.980;
b=53.6;
xa=0.0288;
xb=0.0092;


%calculo de las posiciones
aa=z/10;
espesor=0:aa:z;

na=((Dab)./espesor.*a).*((b*(xa-xb)))


%gráfica
plot(espesor,na)
grid on
xlabel('x')
ylabel('Na');
title('Na vs x')
legend('Na vs x')




