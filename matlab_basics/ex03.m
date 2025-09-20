%% Exercise Set 3
% Exercise 1
clearvars
close all
clc
a = [4, 5, 6];
b = [4 5 10];
c = [10, 11 3];
disp(a);
disp(b)
disp(c)
%%
% all ways works
x1 = [444, pi, 73, 22];
x2 = x1';
% collumn vector created
x3 = x1''; %that also works, nice
%%
% 1 to 10
v1 = 1:10;
% 1 to 10
v2 = [1:10];
% but with step of 2
v3 = 1:2:9;
% the same because 10 can't be included
v4 = 1:2:10;
% from -23 to 0
v5 = -23:3:0;
% step is negative
v6 = 1000:-10:950;
% combines 2 vector constructors into one vec
v7 = [1:5, 5:-1:0];
%%
i = 5:5:125;
ii = 125:-5:5;
iii = -100:1:-51;
iv = 3.1:0.2:43.1;
v = [0:100, 100:-1:0,1:49];
vi = [0:2:62, 60:-2:-4];
% Sums
f1 = [sum(i), sum(ii), sum(iii), sum(iv), sum(v), sum(vi)];

% Mean of sums
format bank
f2 = mean(f1);
disp(f2)
%% works
test = linspace(0, 100, 51);
test = linspace(0, 100);
% bby default 100 points will be used
test = linspace(3,48,117);
% start and end point are always the one we mentioned when using the func
%% Exercise Set 3
% Exercise 2
clearvars
close all
clc
x1 = linspace(1,100);
sin_x1 = sin(x1);
sin_pi = sin(pi:pi:5*pi);
% float point preccision again
x1.*x1;
% that works according to matlab error message, we need . to multiply using
% members of vec
%%
x2 = [0, 1, 2, 3];
%%
x3 = [1, 2, 3, 4];
%% adds 1 to each member of vec
x2 + 1
%% same as before, can't multiply with whole vec
% x2*x3
%% 0*0 1*1 and so on
x2.*x3
%% doesn't work when not applied to individual elements
% x2^2
%% rises up every elemnt to the power of 2
x2.^2
%% same error, I guess only + works
2^x2
%% wooooorks
2.^x2
%% devides by each elements and creates new vec
12./x3
%% same as before
x2./x3
%% yeah, difference between 2 vec
x2 - x3
%% + doesn't require dot somehow
% x2 .+ x3
%% multiplication by each element
2*x2
%% same? no difference confirmed
2.*x2
%% f
disp(sin(1:10)./(1:10));
%% g
x = linspace(-pi/2,pi/2,5);  % vector
%% 1
diff = sin(3.*x) - (3*sin(x) - 4*sin(x).^3); 
tol = 1e-12;
isZero = abs(diff) < tol; 

disp('Differences:'); disp(diff)
disp('Effectively zero?'); disp(isZero)
%% 2 
diff = abs(sin(x./2)) - sqrt((1-cos(x))/ 2);
tol = 1e-12;
isZero = abs(diff) < tol; 

disp('Differences:'); disp(diff)
disp('Effectively zero?'); disp(isZero)
%% 3
diff = tan(3 .* x) - ((3*tan(x)- tan(x)^3)/(1 - 3 * tan(x).^2))
tol = 1e-12;
isZero = abs(diff) < tol; 

disp('Differences:'); disp(diff)
disp('Effectively zero?'); disp(isZero)
%% done
%% Exercise Set 3
% Exercise 3
clearvars
close all
clc

x1 = [-3, -1, 0, 1, 3];
y1 = [7, 3, 7, 3, 7];
plot(x1, y1, '*')
figure
plot(x1, y1, 'o')
figure
plot(x1, y1)
figure
plot(x1, y1, 'r')
figure
plot(x1, y1, 'b')
figure
plot(x1, y1, '--')
figure
plot(x1, y1, 'ro')
x2 = -5:0.5:5;
y2 = sin(x2);
figure
plot(x2, y2, 'o')
figure
plot(x2, y2)
%%
x = [0, 1, 2];
y = [5, 4, 3];
plot(x, y, 'ro')
%% to get lines
plot(x,y, 'ro-')
%% 
plot([-2, 5], [3,6], 'b-')
%% smooth
x2 = -5:0.001:5;
y2 = sin(x2);
figure
plot(x2, y2)

%% Exercise Set 3
% Exercise 4
clearvars
close all
clc
x = -3.2:0.8:3.2;
y = x.^2;
plot(x, y)
hold on
x = -3.2:0.1:3.2;
y = x.^2;
plot(x, y)
%% 
x = -5:0.01:5;
y = sin(x);
g = sin(2.*x);
h = sin(3.*x);
figure
hold on
plot(x, y, 'LineWidth', 1.5);
plot(x, g);
plot(x, h);
hold on
xlabel('x'); ylabel('y')
title('Multiple sine plots')
legend('y = sin(x)', 'sin(2x)', 'sin(3x)')
grid on
%% Exercise Set 3
% Exercise 5
clearvars
close all
clc
u = [1 2 3];
v = [-2 -3 1];
s = u + v
d = u - v
lc = 2*u - 3*v
norm_u = norm(u)
norm_v = norm(v)
unit_u = u / norm_u
unit_v = v / norm_v
dot_uv = dot(u,v)
res = acosd(dot_uv / (norm_u * norm_v))
cross_uv = cross(u,v)
cross_vu = cross(v,u)

%% Exercise Set 3
% Exercise 6
clearvars
close all
clc
u_vec = [1, 2, 3];  
v_vec = [-2, -3, 1]; 

figure
quiver3(0, 0, 0, u_vec(1), u_vec(2), u_vec(3), 0, 'r', 'LineWidth', 1.5) 
hold on
quiver3(0, 0, 0, v_vec(1), v_vec(2), v_vec(3), 0, 'b', 'LineWidth', 1.5)
grid on
xlabel('X'); ylabel('Y'); zlabel('Z');
axis equal
view(45, 25)
legend('u', 'v')
title('3D Vectors using quiver3')
%% 
i = u_vec;
ii = v_vec;
iii = cross(u_vec, v_vec);
iiii = cross(v_vec, u_vec);
figure
hold on
quiver3(0,0,0, i(1),i(2),i(3),0);
quiver3(0,0,0, ii(1),ii(2),ii(3),0);
quiver3(0,0,0, iii(1),iii(2),iii(3),0);
quiver3(0,0,0, iiii(1),iiii(2),iiii(3),0);
grid on
xlabel('X'); ylabel('Y'); zlabel('Z');
axis equal
view(45, 25)

plot3([-5 5], [0 0], [0 0], 'k', 'LineWidth', 1)  % x-axis
plot3([0 0], [-5 5], [0 0], 'k', 'LineWidth', 1)  % y-axis
plot3([0 0], [0 0], [-5 5], 'k', 'LineWidth', 1)  % z-axis

legend('u', 'v', 'u × v', 'v × u')


%% Exercise Set 3
% Exercise 7
clearvars
close all
clc
%% a 
syms
f(x) = x^2
fplot(f(x))
%% b
x = [1, 2, 2, 3, 1.5, 0, 1, 1];
y = [0, 0, 3, 3, 4, 3, 3, 0];
plot(x, y)
%% c
x = -5:0.1:5;
y = x.^2;
plot(y, x)
