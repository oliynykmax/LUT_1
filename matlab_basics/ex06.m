%% Exercise Set 6
% Exercise 1

clearvars
close all
clc
syms t
%% a
ie = [1 1 -4; 2 -1 2; 2 1 2];
ir = [-2 0 -6];
f = rref([ie, ir'])
is = f(:,end);
check = ie * is
%%
iie = [0 1 -4; 2 0 2; 2 2 -6];
iir = [-3 0 -6];
rref([iie, iir'])

x = [-t; -3 + 4*t; t];
iie*x
%% infinity x = -t z = -t y = -3 + 4t
%% 
iiie = [0 1 -4; 2 0 2; 2 2 -6];
iiir = [-3 0 -5];
rref([iiie, iiir'])
% impossible
%% 
ive = [3 0 -1 0; 0 2 -2 -1; 8 0 0 -2 ];
ivr = [0 0 0];
rref([ive, ivr'])

x = [0.25*t; 1.25*t; 0.75*t; t];
b_check = ive * x; 

% infinity
%% Exercise Set 6
% Exercise 2

clearvars
close all
clc
%%
ie = [1 1 -4; 2 -1 2; 2 1 2];
ir = [-2 0 -6];
iie = [0 1 -4; 2 0 2; 2 2 -6];
iir = [-3 0 -6];
iiie = [0 1 -4; 2 0 2; 2 2 -6];
iiir = [-3 0 -5];
ive = [3 0 -1 0; 0 2 -2 -1; 8 0 0 -2 ];
ivr = [0 0 0];
%% a
det(ie) 
rank(ie)
%%
det(iie)
rank(iie)
%% 
det(iiie)
rank(iiie)

rA_iie = rank(iie)
rAb_iie = rank([iie iir'])
rA_iiie= rank(iiie)    
rAb_iiie= rank([iiie iiir'])
rA_ive = rank(ive)
rAb_ive = rank([ive, ivr'])
%% b
inv(ie) * ir'
inv(iie) * iir'
inv(iiie) * iiir'
inv(ive) * ivr'
%% alternative
ie \ ir'
iie \ iir'
iiie \ iiir'
ive \ ivr'
%% Exercise Set 6
% Exercise 3

clearvars
close all
clc
%% a
fplot(@(x) x.^2, [-3 3])

%% b
x = 0:5;
f = @(x) x.^2;
fplot(f(x))
%% correct 
fplot(f, [0 5])

%% c
% A = [1 2 + pi; 4 5 -pi] 4 in first row, 3 in second
% fix 
A = [1 2 +pi; 4 5 -pi]

%% Exercise Set 6
% Exercise 4

clearvars
close all
clc
%%
figure(1)
hold on; grid on; axis equal

quiver3(0,0,0, 1,0,1, 0, 'r', 'LineWidth', 2) 
quiver3(0,0,0, 1,1,0, 0, 'g', 'LineWidth', 2)  
quiver3(0,0,0, 1,0,0, 0, 'b', 'LineWidth', 2) 
view(45, 45)
% R3
%%
figure(2)
hold on; grid on; axis equal
quiver3(0,0,0, 5,-5,0, 0, 'b', 'LineWidth', 2)
quiver3(0,0,0, 1,-1,0, 0, 'r', 'LineWidth', 2)
quiver3(0,0,0, -2,2,0, 0, 'g', 'LineWidth', 2)

view(45, 45)
% line
%%
figure(3)
hold on; grid on; axis equal

quiver3(0,0,0, 1,-1,0, 0, 'r', 'LineWidth', 2)
quiver3(0,0,0, 0,2,2, 0, 'g', 'LineWidth', 2)
quiver3(0,0,0, 1,0,1, 0, 'b', 'LineWidth', 2)
view(45, 45)
% plane

%% c
%% figure 2 can be replaced
%% 
a = [1 1 1; 0 1 0; 1 0 0];
b = [5 1 -2; -5 -1 2; 0 0 0];
c = [1 0 1; -1 2 0; 0 2 1];
rank(a)
rank(b)
rank(c)
%% 
null(a)
null(b)
null(c)
%% that conclusions can be also be done from c
%% Exercise Set 6
% Exercise 5

clearvars
close all
clc
%% a i
figure(1)
hold on; grid on; axis equal

v1 = [2; 0];
v2 = [1; 0];
v3 = [0; 1];
v4 = [1; -1];
v5 = [1; 1];

quiver(0,0,v1(1),v1(2),0,'g','LineWidth',2)
quiver(0,0,v2(1),v2(2),0,'r','LineWidth',2)
quiver(0,0,v3(1),v3(2),0,'b','LineWidth',2)
quiver(0,0,v4(1),v4(2),0,'m','LineWidth',2)
quiver(0,0,v5(1),v5(2),0,'y','LineWidth',2)
%%
A = [0 1; 1 0];

v1 = A*v1;
v2 = A*v2;
v3 = A*v3;
v4 = A*v4;
v5 = A*v5;

figure(2)
hold on; grid on; axis equal

quiver(0,0,v1(1),v1(2),0,'g','LineWidth',2)
quiver(0,0,v2(1),v2(2),0,'r','LineWidth',2)
quiver(0,0,v3(1),v3(2),0,'b','LineWidth',2)
quiver(0,0,v4(1),v4(2),0,'m','LineWidth',2)
quiver(0,0,v5(1),v5(2),0,'y','LineWidth',2)
%% b

x = [0, 1, 1, 2, 0.5, -1, 0, 0];
y = [0, 0, 2, 2, 3, 2, 2, 0];
figure(1)
plot(x,y)
%% 
B = [x;y];
S = [2 3; 0 1];
C = S * B;
figure(2)
plot(C(1, :), C(2, :))
%% c
B = [x;y];
a = 110;
R = [cosd(a) -sind(a); sind(a) cosd(a)];
C = R * B;
figure(2)
plot(C(1, :), C(2, :))
%% Exercise Set 6
% Exercise 6

clearvars
close all
clc
%% a
die = randi([1, 6]);
%% b
rng(1);
counter = 0;
for i = 1:10
    die = randi([1 6]);
    if die == 3
        counter = counter + 1;
    end
end
disp(counter);
%% c
rng(1)                           
die = randi([1 6], 1, 234);      

num_threes = sum(die == 3);      
num_fours  = sum(die == 4);    

pct_threes = 100 * num_threes / numel(die);  
pct_fours  = 100 * num_fours  / numel(die);  

fprintf('Number of 3s: %d (%.2f%%)\n', num_threes, pct_threes);
fprintf('Number of 4s: %d (%.2f%%)\n', num_fours,  pct_fours);
%%  d
histogram(die);
%% 
die = randi([1 6], 1, 60000);    
histogram(die);
%% Exercise Set 6
% Exercise 7

clearvars
close all
clc
%%

rng(1);
rolls = randi([1 6], 1000, 2);
sums  = sum(rolls, 2);
%%
num_sum3 = sum(sums == 3);
prob_sum3 = num_sum3 / 1000;
fprintf('Simulated: count of sum==3 = %d out of 100000, probability = %.6f\n', ...
        num_sum3, prob_sum3);
%%
theo_sum3 = 2/36;
fprintf('Theoretical probability for sum==3 = %.6f (2/36 = 1/18)\n', theo_sum3);

%% b
edges = 1.5:1:12.5;             
probabilities = histcounts(sums, edges, 'Normalization', 'probability');

figure;
bar(2:12, probabilities);
grid on;

%% Overlay theoretical probabilities for visual check
hold on;
theoretical_counts = [1 2 3 4 5 6 5 4 3 2 1] / 36;
plot(2:12, theoretical_counts);
hold off;

%% Exercise Set 6
% Exercise 8

clearvars
close all
clc
%%
f = @(x) exp(x);
x = -5:0.01:5;
plot(x, f(x));
% xlim([-2 2]);
% ylim([-0.1 3.9]);
axis([-2 2 -0.1 3.9]);
%% Exercise Set 6
% Exercise 9

clearvars
close all
clc
%%
x = @(a) (a ./ 10) .* cos(a);
y = @(a) (a ./ 10) .* sin(a);
t = linspace(0, 40, 100000);
x_vec = x(t);
y_vec = y(t);

plot(x_vec, y_vec)
axis equal
xlabel('x(t) = (t/10) * cos(t)');
ylabel('y(t) = (t/10) * sin(t)');
%% b
t = linspace(0, 2*pi, 1000);

x = cos(t);
y = sin(t);

plot(x, y);
grid on;
axis equal;          

xlabel('x(t) = cos(t)');
ylabel('y(t) = sin(t)');
%% c
t = linspace(0, 40, 1000);

x = t./10 .* cos(t);
y = t./10 .* sin(t);
z = t./10;

plot3(x, y, z);
grid on;
axis equal;          

xlabel('x(t) = t/10 * cos(t)');
ylabel('y(t) = t/10 * sin(t)');
ylabel('z(t) = t/10');
%% Exercise Set 6
% Exercise 10

clearvars
close all
clc
%% a
x = linspace(-5, 5, 100);
y = linspace(-5, 5, 100);

[X, Y] = meshgrid(x, y);

Z = 2*X + 3*Y + 1;

surf(X, Y, Z);
grid on;
axis tight;
xlabel('x');
ylabel('y');
zlabel('f(x, y) = 2x + 3y + 1');
%% b
x = linspace(-3, 3, 100);
y = linspace(-2, 2, 100);

[X, Y] = meshgrid(x, y);

Z = X .* Y .* exp(-X.^2 -Y.^2);

mesh(X, Y, Z);
grid on;
axis tight;
xlabel('x');
ylabel('y');
zlabel('f(x, y)');
%% the diff between mesh and surf is that mesh is a mesh, and not filled
[X, Y] = meshgrid(-1.5:2.5, -0.5:0.5:1.5);
plot(X, Y, 'ro')
hold on
plot(X(3, 2), Y(3, 2), 'kp')
figure
plot3(X(3, 2), Y(3, 2), 4, 'ko')
%% Exercise Set 6
% Exercise 11

clearvars
close all
clc
%%
syms t
x = cos(t);
y = sin(t);
r = [x; y];
v = diff(r, t);
a = diff(v, t);

times = [pi pi/2 3*pi/4];
P = double(subs(r, t, times));
V = double(subs(v, t, times));
A = double(subs(a, t, times));

fplot(x, y, [0 2*pi])
hold on
quiver(P(1,:), P(2,:), V(1,:), V(2,:), 0, 'b', 'LineWidth', 1.5)
quiver(P(1,:), P(2,:), A(1,:), A(2,:), 0, 'r', 'LineWidth', 1.5)
plot(P(1,:), P(2,:), 'ko', 'MarkerFaceColor','k')
axis equal
grid on
%% 
x = cos(-t);
y = sin(-t);
r = [x; y];
v = diff(r, t);
a = diff(v, t);

times = [pi pi/2 3*pi/4];
P = double(subs(r, t, times));
V = double(subs(v, t, times));
A = double(subs(a, t, times));

fplot(x, y, [0 2*pi])
hold on
quiver(P(1,:), P(2,:), V(1,:), V(2,:), 0, 'b', 'LineWidth', 1.5)
quiver(P(1,:), P(2,:), A(1,:), A(2,:), 0, 'r', 'LineWidth', 1.5)
plot(P(1,:), P(2,:), 'ko', 'MarkerFaceColor','k')
axis equal
grid on
%%
x = cos(t/2);
y = sin(t/2);
r = [x; y];
v = diff(r, t);
a = diff(v, t);

times = [pi pi/2 3*pi/4];
P = double(subs(r, t, times));
V = double(subs(v, t, times));
A = double(subs(a, t, times));

fplot(x, y, [0 2*pi])
hold on
quiver(P(1,:), P(2,:), V(1,:), V(2,:), 0, 'b', 'LineWidth', 1.5)
quiver(P(1,:), P(2,:), A(1,:), A(2,:), 0, 'r', 'LineWidth', 1.5)
plot(P(1,:), P(2,:), 'ko', 'MarkerFaceColor','k')
axis equal
grid on

