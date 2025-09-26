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
%% Exercise Set 3
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

%% d)

%% d)

%% e)

%% Exercise Set 4
% Exercise 3
clearvars
close all
clc

