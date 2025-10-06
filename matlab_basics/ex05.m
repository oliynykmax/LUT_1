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
%% a generates numbers between 0 and 1 
rand()
rand()
rand()
%% generates matrix of m x n dimension
rand(1, 4)
rand(4, 1)
rand(2, 2)
rand(0, 0)
%% 4 multiplies results by for, now upper limit is 4a
a = 4 * rand(2, 2);
%% adds num to each matrix
a = rand(2, 2) + 3;
b = rand(2, 2) + 0;
c = rand(2, 2) + 42;
%% 
a = 2 * rand(2, 2)+ 3;
b = 0 * rand(2, 2) + 1;
c = 44 * rand(2,2) + 0;
%% iv
r1 = rand(1, 10);
r2 = rand(1, 7) * 5;
r3 = 6 + 2 * rand(1, 15);
r4 = -5 + 10 * rand(1, 150);
r5 = -20 + 5 * rand(10, 10);
r6 = -0.7 + (0.1 - (-0.7)) * rand(50, 50);
%% b
int_mat = randi([-5, 3], 4, 6);
%% Exercise Set 5
% Exercise 3

clearvars
close all
clc

rng(2);
r1 = rand(1, 10);
r2 = rand(1, 7) * 5;
r3 = 6 + 2 * rand(1, 15);
r4 = -5 + 10 * rand(1, 150);
r5 = -20 + 5 * rand(10, 10);
r6 = -0.7 + (0.1 - (-0.7)) * rand(50, 50);
%% c
t1b = r2(7);
%% d
t1dd = r2([2,3]);
% test = r2(2,3);
%% e 
t3e = r3([10, 12, 15]); 
%% d
t3d = r4(2:9);
%% g
t3g = r4(1:2:end);
%% h that's how we can access second to last
t3h = r4(1:end-1);
%% i
t3i = [r1(end), r2(end-1), r3(end-2)];
%% j correct?
%% Exercise Set 5
% Exercise 4

clearvars
close all
clc

rng(2);
r1 = rand(1, 10);
r2 = rand(1, 7) * 5;
r3 = 6 + 2 * rand(1, 15);
r4 = -5 + 10 * rand(1, 150);
r5 = -20 + 5 * rand(10, 10);
r6 = -0.7 + (0.1 - (-0.7)) * rand(50, 50);
%% a
r1(15);
% Index exceeds the number of array elements. Index must not exceed 10.
% 
% Error in ex05 (line 118)
% r1(15);
% ^^^^^^^
%% b
r2(1, 105); 
% won't work because the r2 is 1x7 and not 1x105
%% c
sin = 359;
a = sin(1);
b = sin(2);
% we made sin variable, indexed it at 1 and
% assigned to a
% finally accessed unitilized val at index 2
%% Exercise Set 5
% Exercise 5

clearvars
close all
clc
%% a
a = ones(2, 3);
b = ones(5, 5);
c = ones(1, 1);
%% 
a = zeros(2, 3);
b = zeros(5, 5);
c = zeros(1, 1);
%% 
a = eye(1);
b = eye(30, 30);
c = eye(4, 11);
d = eye(11, 4);
%% b
r1 = round(rand(1, 10));
r2 = round(rand(1, 7) * 5);
r3 = round(6 + 2 * rand(1, 15));
r4 = round(-5 + 10 * rand(1, 150));
r5 = round(-20 + 5 * rand(10, 10));
%% 
x = [-2.3, 1.7, 4.5];
ceil(x)    % [-2 2 5]
floor(x)   % [-3 1 4]
fix(x)     % [-2 1 4]
round(x)   % [-2 2 4]
%% Exercise Set 5
% Exercise 6

clearvars
close all
clc
%%
rng(1);
Y = randi([-8, 8], 10, 10);

testi1 = Y(2, 1);
% row 2 col 1
testi2 = Y(1, 2); 
% row 1 pos 2
testi3 = Y([1,2], 1); 
% row 1 and 2, pos 1, 1x2 matrix
testi4 = Y(5, [3,4,5]); 
% row 5 col 3 4 5, 1x3 matrix
testi5 = Y([1,2], [1,3]); 
% 2x2 having row 1 2 positions 1 and 3
testi6 = Y([1,2], 1:2:5); 
%% 2x3 matrix
testi7 = Y(:, 1); 
% any row, but 1st collumn
testi8 = Y(end, :); 
% last row, all collumns
%% 
a = Y(3,4);
b = Y(4,:);
c = Y(:, end);
d = Y([2 6], [3 5]);
e = Y([end-1, end], [end-1, end]);
