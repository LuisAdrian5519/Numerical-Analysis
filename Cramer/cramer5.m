clear all
clc
x1 = [2 -1 1];
x2 = [-6 7 -3];
x3 = [1 -1 2];
y = [12 -8 16];

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
y1 = 2*vx1-6*vx2+1*vx3
y2 = -1*vx1+7*vx2-1*vx3
y3 = 1*vx1-3*vx2+2*vx3