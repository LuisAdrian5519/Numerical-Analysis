clear all
clc
x1 = [2 5 3];
x2 = [1 2 1];
x3 = [-1 2 1];
y = [1 -4 5];

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
y1 = 2*vx1+1*vx2-vx3
y2 = 5*vx1+2*vx2+2*vx3
y3 = 3*vx1-1*vx2+1*vx3
