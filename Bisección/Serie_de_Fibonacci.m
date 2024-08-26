clear, clc

f = @(x) -2+x+log(x);

[iteracion, xi, Ea] = Biseccion(1,2,5,1,f)
