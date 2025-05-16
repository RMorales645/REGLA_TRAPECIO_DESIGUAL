% RONALD ALEXIS MORALES VARELA
%0901-23-6114

% Regla del trapecio con segmentos desiguales
f = @(x) 5*x.^3 - 3*x.^2 + 2*x + 1;

% Puntos desiguales
x = [0 0.3 0.6 1];
n = length(x);
T = 0;

for i = 2:n
    h = x(i) - x(i-1);
    T = T + (h/2)*(f(x(i-1)) + f(x(i)));
end

% Mostrar resultados
fprintf('Aproximación de la integral: %.4f\n', T);

% Valor exacto dado
I_exacta = 2.25;

% Error relativo porcentual
E = abs((T - I_exacta)/I_exacta)*100;
fprintf('Error relativo porcentual: %.2f%%\n', E);