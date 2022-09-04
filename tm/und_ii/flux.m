clc
clear
fprintf(2,'Universidad de las Fuerzas Armadas ESPE ');
fprintf('\nTransferencia de Masa');


fprintf('\nDifusión H2 en lamina de caucho');

%ingreso datos
z = input('\nIngrese el espesor en metros ');
temp = input('\nIngrese la temperatura');
fab = input('\nIngrese la permeabilidad');
s = input('\nIngrese la solubilidad');
p = input('\nIngrese la variación de presión en atm ');
p2 = input('\nIngrese la variación de presión 2 ');
p3 = input('\nIngrese la variación de presión 3 ');


%calculo de las posiciones
a=z/10;
espesor=0:a:z;

Dab=fab/s;
va=(Dab*s*p*760)./espesor;

va2=(Dab*s*p2*760)./espesor;

va3=(Dab*s*p3*760)./espesor;

%gráfica
plot(espesor,va,espesor,va2,espesor,va3)
grid on
xlabel('z')
ylabel('VA,B,C');
title('V vs Z')
legend('va','vb','vc')


%tabla
A = va.';
B = va2.';
C = va3.';
E=espesor.';

table(E,A,B,C)







