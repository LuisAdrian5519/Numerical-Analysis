function [iteracion, xi, Ea] = Biseccion(a,b,imax,tolerancia,funcion)

iteracion = 0;
xi = 0;

while true
    iteracion=iteracion+1;
    xa = xi;
    xi = (a+b)/2;
    Ea = abs((xi-xa)/xi)*100;
    test = funcion(a)*funcion(xi);
    if test < 0
        b = xi;
    elseif test > 0
        a = xi;
    else
        break;
    end
    
    if iteracion >= imax || Ea <= tolerancia, break
 
    end
end
