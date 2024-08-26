clc, clear

fprintf('\n Ecuación: -1+5.5*x-4*x^2+0.5*x^3 \n\n\n')

xi = 10;
xia = 10;
Erpa = 2;

Ecuacion1=@(x) -1+(5.5*x)-(4*x^2)+(0.5*x^3);
Derivada1 =@(x) 5.5-(8*x)+(1.5*x^2);

while Erpa>0.01
        
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
        xi = xi2;

        fprintf('\nError aproximado: %f\n',Ea)
        fprintf('Error relativo porcentual aproximado: %f \n',Erpa)
        
        fprintf('\n-----------------------------------------------\n')
    
        else 
                
        break;
    
    end
end