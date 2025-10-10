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