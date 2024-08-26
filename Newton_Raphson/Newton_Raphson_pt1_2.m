clc, clear

fprintf('\n Ecuación: -x^2+1.8x+2.5 \n\n\n')

xi = 5;
xia = 0;
Erpa = 2;

syms x;
y = sqrt((1.8*x)+2.5);
dy = diff(y,x);

Ecuacion1=@(x) sqrt((1.8*x)+2.5);
Derivada1 =@(x) 9/(10*((9*x)/5 + 5/2)^(1/2));


while Erpa>0.05
        
    i = i+1;

    fprintf('Iteración: %d\n\n',i)

    fxi = Ecuacion1(xi);
    fdxi = Derivada1(xi);

    xi2=xi-(fxi/fdxi);

    fprintf('xi: %f\n',xi)
    fprintf('f(xi): %f',xi2)
 
    if i >= 1

        Ea = (xi - xia)/xi;
        Erpa = abs((Ea)*100);
              
        xia = xi;
        xi = fxi;

        fprintf('\nError aproximado: %f\n',Ea)
        fprintf('Error relativo porcentual aproximado: %f \n',Erpa)
        
        fprintf('\n-----------------------------------------------\n')
    
        else 
                
        break;
    
    end
end