clc
clear

zesp = input('\nEspesor en metros (m) ');
Dab = input('\nDifusividad (m2/s)');

aaimd=zesp/10;
espesor=0:aaimd:zesp;

na=((Dab)./espesor.*0.980).*((53.6*(0.0288-0.0092)))


%gráfica
plot(espesor,na)
grid on
xlabel('espesor')
ylabel('Na');
title('Na vs espesor')
legend('Na vs espesor')