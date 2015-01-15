clear all
close all
clc

% Inicializas el contador de aciertos
n = 0;
m = 0;

% Loop cambiando de eleccion
for L = 1:10000
    % Colocas el premio (R) y eliges puerta (r)
    r = randi([0 2]);
    R = randi([0 2]);

    % Abres una puerta que no tiene premio (a)
    if r == R
        a = mod(r+1,3);
    elseif r == mod(R+1,3)
        a = mod(r+1,3);
    elseif r == mod(R+2,3)
        a = mod(r-1,3);
    end
    
    % Cambias de eleccion siempre
    if r == mod(a-1,3)
        r = mod(a+1,3);
    elseif r == mod(a+1,3)
        r = mod(a-1,3);
    end
    
    % Cuentas los aciertos
    if r == R
        n = n+1;
    end
end

% Loop manteniendo la eleccion
for L = 1:10000
    % Colocas el premio (S) y eliges puerta (s)
    s = randi([0 2]);
    S = randi([0 2]);

    % Cuentas los aciertos
    if s == S
        m = m+1;
    end
end

N = n/L;
M = m/L;
disp('Tus posibilidades cambiando de opcion son:'), disp(N)
disp('Tus posibilidades manteniendo la eleccion son:'), disp(M)