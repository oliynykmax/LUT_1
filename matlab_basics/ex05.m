%% Exercise Set 5
% Exercise 1

clearvars
close all
clc
%% a
A = [1 2 3 4 5 6 7 8;
    9 11 13 15 17 19 21 23];
%% b 
u = A';
%% c
% *show matrix on workspace*
%% d
A = [3 2; 3 5];
B = [4 3; 1 2];
x = [4;1];
% disp(A);
% disp(B);
% disp(x);
disp("A+B^T");
disp(A+(B'));
disp("AB");
disp(A*B);
disp("BA");
disp(B*A);
disp("A*x");
disp(A*x);
disp("x*A");
%disp(x * A);
%% e
A = [1 0 1; 2 -2 1; 1 2 1];
b = [1; 0; 2];
Ab = [A, b];
R = rref(Ab);
x = R(1,4)
y = R(2, 4)
z = R(3,4)
%% Exercise Set 5
% Exercise 2

clearvars
close all
clc
