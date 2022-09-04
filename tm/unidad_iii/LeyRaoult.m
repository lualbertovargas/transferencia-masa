function Sy = LeyRaoult(T)

global P x
global A B C
global y

for i = 1:2
% Calculo de Ps (mmHg) con Ecc. de Antoine
Ps(i) = 10^(A(i)-B(i)/(T + C(i)));
% Calculo de K
k(i) = Ps(i)/(P*760);
% Calculo de la fraccion molar de vapor
y(i) = k(i)*x(i);
end

Sy = 1.0 - sum(y);

end