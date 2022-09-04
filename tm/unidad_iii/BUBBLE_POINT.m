% Este programa genera el diagrama T - xy usando el calculo de la temperatura
% del punto de burbuja empleando la Ley de Raoult para predecir el equilibrio

clear
clc

global P x
global A B C
global y

% Presion y composicion liquida
P = 2; % atm
x(1) = 0.4;
x(2) = 1 - x(1);

% Numero de datos calculados
n = 20;

% Parametros de la ecuacion de Antoine
A = [6.87987, 6.95087];
B = [1196.76, 1342.31];
C = [219.161, 219.187];

% Temperatura de ebullicion de los componentes
Tb = [119.55, 188.6];

for i = 1:n+1
% Temperatua supuesta
T = Tb(2);

% Soluci?n del Punto de Burbuja
T = fsolve('LeyRaoult',T)

% Asignaci?n de vectores para graficar
x_(i) = x(1);
y_(i) = y(1);
T_(i) = T;

% Reasignaci?n de nuevas xi
x(1) = x(1) + 1.0/n;
x(2) = 1.0 - x(1);
clc

end

plot(x_,T_,y_,T_)

xlabel('x - y')
ylabel('Temperatura, C')
axis square
axis normal
axis ([0 1 0.98*min(T_) 1.02*max(T_)])
legend('Linea de punto de burbuja, T-x','Linea de punto de rocio, T-y')

