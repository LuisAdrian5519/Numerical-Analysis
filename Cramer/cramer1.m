clear all
clc
x1 = [0 2 3];
x2 = [2 1 1];
x3 = [5 1 0];
y = [9 9 10];

d=[x1; x2; x3];
d1=[y; x2; x3];
d2=[x1; y; x3];
d3=[x1; x2; y];
a=det(d);
b=det(d1);
c=det(d2);
d=det(d3);

fprintf('\nValores de X:\n')
vx1 = b/a
vx2 = c/a
vx3 = d/a

fprintf('\n Comprobación:\n')
y1 = 2*vx2+5*vx3
y2 = 2*vx1+vx2+vx3
y3 = 3*vx1+vx2
