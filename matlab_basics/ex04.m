%% Exercise Set 4
% Exercise 1
clearvars
close all
clc
%% a)
v = 1:60;
u = 1 + v./12 .* 0.03;
answer1 = 500 * sum(u);
disp(answer1)

syms i
d = 1 + i/12 * 0.03;
sum_u = symsum(d, i, 1, 60);
answer2 = 500 * sum_u;
disp(double(answer2))
%% b)
v = 1:60;
u = 1.03.^(v./12);
answer1 = 500 * sum(u);
disp(answer1)

syms i
d = 1.03 ^ (i/12);
sum_u = symsum(d, i, 1, 60);
answer2 = 500 * sum_u;
disp(double(answer2))
%% c)
v = 1:12;
u = 500 * (1 + v./12 .* 0.03);
i = 0:4;
w = sum(u) * 1.03 .^ i;
answer = sum(w);
disp(answer)

clearvars
syms i j

u = 500 * (1 + j/12 * 0.03);

S = symsum(u, j, 1, 12); 

sum_f = symsum(S * 1.03^i, i, 0, 4);
disp(double(sum_f))
%% d)
v = 1:12;
t = 0:4;
w = sum(1.03 .^ t);
u = 500 * (1 + v./12 .* 0.03) .* w;
answer = sum(u);
disp(answer)

clearvars
syms i j

S = symsum(1.03 ^ i, i, 0, 4);
u = 500 * (1 + j/12 * 0.03) * S;

sum_F = symsum(u, j, 1, 12); 
disp(double(sum_F))
%% Exercise Set 4
% Exercise 2
clearvars
close all
clc

%% a)
syms x y
f = @(x, y) x .* y - 2./x;
x = [1 2 3];
y = [2 3 4];
f(x, y)
%% b) 
y = 0:10;
v = (1/3) .^ y;
disp(sum(v))
%% c)
syms x;
f = x ^ 2;
g = exp(-x);
DF = diff(f, x);
DG = diff(g, x);
pretty(DF)
pretty(DG)
%% d)
IF = int(f, x);
IG = int(g, x);
pretty(IF);
pretty(IG)
% The shortcoming is that the int function returns 
% the antiderivative without the constant of integration (+ C)
%% e)
IF = int(f, x, 0, 1);
IG = int(g, x, 0, inf);
pretty(IF);
pretty(IG)
%% Exercise Set 4
% Exercise 3
clearvars
close all
clc

%% )
f = @(x) exp(x);
a = f(-1)
%% b)
syms x;
g = exp(x);
b = double(subs(g, x, -1))
%% c)
x = 3;
a = 4;
f(x)
f(a)
%% d)
h = @(x) x.^2;
x = 1:10;
h(x)
syms y

d = y ^ 2;
v = 1:10;
subs(d, y, v)
%% e

f = @(x) x .^ 2;
g = @(x) (x + 1).^2 -1;

fplot(f, [-2,2])
hold on
x = linspace(-2, 2, 1000);
plot(x, g(x));
grid on

%% Exercise Set 4
% Exercise 4
clearvars
close all
clc

%% a)
f = @(x) x.^2 + 3 * sin(4.*x) - exp(-x);
tic
f(1:10000);
t = toc;
disp("seconds for @ func:"); disp(t); 
syms x 
f = x^2 + 3 * sin(4*x) - exp(-x);
tic
subs(f, x, 1:10000);
b = toc;
disp("seconds for sym func:"); disp(b); 
%% b)
clearvars
close all
clc

f = @(x) cos(x) - 1 / sqrt(2);
x_vals = linspace(0, 2*pi, 10);

roots = [];

for i = 1:length(x_vals)
    r = fzero(f, x_vals(i));
    
    if (isempty(roots) || all(abs(roots - r) > 1e-6)) && r > 0
        roots(end+1) = r; 
    end
end
fprintf('Roots found:\n')
disp(roots)
%% Exercise Set 4
% Exercise 5
clearvars
close all
clc

f = @(x) cos(x);          
I_exact = sin(1);

n_values = [20, 40, 60, 80, 100];
errors = zeros(size(n_values));

for k = 1:5
    n = n_values(k);
    x = linspace(0, 1, n+1);      
    y = f(x);
   
    s_n = 0;
    for i = 1:n
        s_n = s_n + (x(i+1)-x(i)) * (y(i+1) + y(i))/2;
    end
    
    errors(k) = abs(I_exact - s_n);
    
    fprintf('n = %d, Approximation = %.8f, Error = %.8e\n', n, s_n, errors(k));
end

%% Exercise Set 4
% Exercise 6
clearvars
close all
clc

x = [-10 -17 -4 -7 -5 -6 -11];
y = [105 163 43 69 48 56 115];
figure;
scatter(x, y, 'b', 'filled');
xlabel('Median Temperature (C)');
ylabel('Weekly Slipper Orders');
title('Slipper Orders vs Temperature');
%% 2
n = length(x);

sum_x = sum(x);
sum_y = sum(y);
sum_xy = sum(x .* y);
sum_x2 = sum(x .^ 2);

Sxy = sum_xy - (sum_x * sum_y) / n;
Sxx = sum_x2 - (sum_x^2) / n;

a = Sxy / Sxx;

x_mean = sum_x / n;
y_mean = sum_y / n;

b = y_mean - a * x_mean;

x_fit = linspace(min(x) - 2, max(x) + 2, 100);
y_fit = a * x_fit + b;

figure;
h1 = scatter(x, y, 'b', 'filled');
hold on;
h2 = plot(x_fit, y_fit, 'r-', 'LineWidth', 2);

xlabel('Median Temperature (C)');
ylabel('Weekly Slipper Orders');
title('Slipper Orders vs Temperature');

legend([h1, h2], {'Data points', sprintf('Regression line: y = %.2fx + %.2f', a, b)});

axis([min(x)-2 max(x)+2 min(y)-20 max(y)+20]);




 






