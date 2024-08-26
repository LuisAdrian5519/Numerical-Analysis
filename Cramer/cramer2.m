clear all
clc
x1 = [8 -2 2];
x2 = [4 5 -1];
x3 = [-1 1 6];
y = [11 4 7];

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
y1 = 8*vx1+4*vx2-vx3
y2 = -2*vx1+5*vx2+vx3
y3 = 2*vx1-vx2+6*vx3
