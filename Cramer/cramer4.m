clear all
clc
x1 = [10 -3 1];
x2 = [2 -6 1];
x3 = [-1 2 5];
y = [27 -61.5 -21.5];

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
y1 = 10*vx1+2*vx2-1*vx3
y2 = -3*vx1-6*vx2+2*vx3
y3 = 1*vx1+1*vx2+5*vx3