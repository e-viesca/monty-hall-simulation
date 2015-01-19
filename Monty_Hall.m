%%%% Monty Hall problem simulator

clear all
close all
clc

% Number of simulations
I = 10000;

% Keeping the choice
    
    % 'r' assigns the elections and 'R' assigns the prizes
    r = randi([0 2], I, 1);
    R = randi([0 2], I, 1);
    o = zeros(I, 1);

    % Evaluates how many times the entries match i.e. the number of hits
    m = length(find(r == R));

    
% Changing the choice

    % Extracts the doors that do not contain prizes
    a = find(r == R);
    o(a) = mod(r(a)+1,3);
    
    b = find( r == mod(R+1,3) );
    o(b) = mod(r(b)+1,3);
    
    c = find( r == mod(R+2,3) );
    o(c) = mod(r(c)-1,3);
    
    % Changes your chosen door
    d = find( r == mod(o-1,3) );
    r(d) = mod(o(d)+1,3);
    
    e = find( r == mod(o+1,3) );
    r(e) = mod(o(e)-1,3);
    
    % Evaluates how many times the entries match i.e. the number of hits
    n = length(find(r == R));

    
M = m/I;
N = n/I;
disp('Tus posibilidades cambiando de opcion son:'), disp(N)
disp('Tus posibilidades manteniendo la eleccion son:'), disp(M)