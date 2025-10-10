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
% Exercise 5

clearvars
close all
clc