set(0,'DefaultFigureWindowStyle','docked')


%% Exercise Set 2
% Exercise 1
clearvars
close all
clc

syms x
f(x) = 1 / (x ^ 2 + 1);
fplot(f(x), [0, 4])

%% if interval is ommited, defaults to [-5,5]
fplot(f(x));

%% Exercise 2
clearvars
close all
clc
f = @(x) (1 ./ (x + 0.5) .^ 2) + x;
x = linspace(0, 4, 500);
y = f(x);
plot(x, y, 'r--', 'LineWidth', 3);
grid on

%% Exercise 3
clearvars
close all
clc

syms x
%% a
solution = solve(x^2 == 4);
pretty(solution);
%% b
[sol2, ~, ~] = solve(tan(x) == 1, x, 'ReturnConditions', true);

pretty(sol2)


%% Exercise 4
clearvars
close all
clc
syms x
%% a

pretty(solve(x^2 < 4))

% 0 doesn't look like a solution ???
[sol2, params2, cond2] = solve(x^2 < 4, x, 'ReturnConditions', true);

pretty(cond2)

% that is better

%% b
syms x y
eqn1 = y == x - 1;
eqn2 = y == -x + 1;

[A,B] = equationsToMatrix([eqn1,eqn2],[x,y]);
pretty(linsolve(A, B))

%% alternative
syms x y
eqns = [y == x - 1, y == -x + 1];
sol = solve(eqns, [x, y]);
result = [sol.x, sol.y];
disp(['Solution: [x, y] = [', char(result(1)), ', ', char(result(2)), ']'])

%% Exercise 5
clearvars
close all
clc

%% a

syms x h
f = ((x + h) ^ 2 - x ^ 2) / h;
limit(f, h, 0)

%% b
f = sin(x);
limit(f/x, x, 0)
%% c
syms k

solution = symsum(1 / factorial(k), k, 0, 20);
double(solution);
%% d
syms k

solution = symsum(1 / factorial(k), k, 0, Inf);
double(solution);
%% e
syms k
symprod(k^2, k, 1, 5)

%% Exercise 6
clearvars
close all
clc

syms k n
expr = (1/16^k) * ( 4/(8*k + 1) - 2/(8*k + 4) - 1/(8*k + 5) - 1/(8*k + 6) );
p(n) = symsum(expr, k, 0, n);
for i = 0:6
    error = double(abs(pi - p(i)));
    fprintf('n = %d: |pi - p(n)| = %.16f\n', i, error);
end
