
% Hello world
disp('Hello world!')
%% Exercise Set 1
% Exercise 1
clearvars
close all
clc

sine = sin(pi/2)
cosine = cos(3*pi)

sin(pi)
% here we get 1.2246e-16 due to the matlab arhitechture, instead of giving 0 it gives very small number
% it's just unavoidable cost of using floating point numbers, that's why when we gonna compare
% that number to something, we will use some epsilon for comparison

%% Exercise Set 1
% Exercise 2
clearvars
close all
clc

t2i = (23.4 * 2 ^ 2 - 238) / (9^2 + 34.2)
t2ii = (8/9) ^ 3 * 32 - (3 ^ 6 / (7^7 - 555))
t2iii = 4 * sqrt(2200) - 45
t2iv = sqrt(4 ^ 5) + log(exp(-5))
t2v = sin(pi) - abs(cos(pi) / 2)
t2vi = (23 + exp(-2)) / (exp(4) + log(1023))
t2vii = (tan(pi/6 * log(8)))/(sqrt(17) + 2)
t2viii = nthroot(-8, 3) + nthroot(6103515625, 7)
t2ix = cos(5 * pi / 6) * (sin(8 * pi / 7))^2

%% Exercise Set 1
% Exercise 4
clearvars
close all
clc

credits_mb = 3;
weeks = 8;
hours_in_credit = 1600 / 60;
hours_of_work = credits_mb *  hours_in_credit;
h_per_week = hours_of_work / 8;

%% Exercise Set 1
% Exercise 5
clearvars
close all
clc
syms x;
f(x) = x^2;
f(2);
%% plot1 
fplot(f(x))
%% plot2
fplot(f(x), [-15, 45])
title("-15 45")
% the extra vector argument is providing the limits for x axis, so the plot
% is not drown outside of that aread, if it's 2, 2 nothing is shown
% if it is ommited, it picks some size (-5, 5), which is matlab default
%% c)
clearvars
close all
clc

syms x
f(x) = x^2;
g(x) = 1 + 0*x;

figure

fplot(f, [-3, 3], 'LineWidth', 2)
hold on

fplot(g, [-3, 3], '--r', 'LineWidth', 2)

title('Graphical Solution of x^2 = 1')
xlabel('x')
ylabel('y')
legend('f(x) = x^2', 'y = 1', 'Location', 'northwest')
grid on
%% Exercise Set 1
% Exercise 5
clearvars
close all
clc
% 2 = 2
% in programming == should be used, === in some other languages like js
result1 = 2 == 2 % 1 - true
result2 = 2 == 3 % 0 - false
%% examples of solve
syms x y z
eq1 = x + y == 5;
eq2 = x - y == 1;
s1 = solve(eq1, x)
s2 = solve(eq1, y)
pretty(s1)
pretty(s2)


%% another example
syms u v
% Define system of equations
eqns = [2*u + v == 0, u - v == 1];
% Solve for u and v
S = solve(eqns, [u v]);
pretty(S.u)
pretty(S.v)
%% x^2 == 1 solved
clearvars
close all
clc
syms x 
S = solve(x^2 == 1, x)
pretty(S)
%% |x − 5| = |x|+1
syms x real
eq = abs(x - 5) == abs(x) + 1;
S_abs = solve(eq, x);
pretty(S_abs);
%% but I wanna look at the issue
syms x
eq = abs(x - 5) == abs(x) + 1;
S_abs = solve(eq, x);
pretty(S_abs);
% solved it anyway but gave the warning, solved using vpasolve
% as I read the diff between vpasolve and solve is that first one always
% returns number, not expression, and solve does it only in simple cases
% when the answer is a rational number

%% bonus
clearvars
close all
clc
%% x2 > 1 and |x − 5| > |x| + 1
syms x real
sol = solve(x^2 > 1, x, 'ReturnConditions', true);
disp("inequality 1 solution:")
pretty(sol.conditions)
sol2 = solve(abs(x - 5) > abs(x) + 1, x, 'ReturnConditions', true);
disp("inequality 2 solution:")
pretty(sol2.conditions)




