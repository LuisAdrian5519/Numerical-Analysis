clc, clear

fprintf('\n Ecuación: 8*sen(x)*exp(-x)-1 \n\n\n')

xi = 0.3;
xia = 10;
Erpa = 2;

Ecuacion1=@(x) 8*sin(x)*exp(-x)-1;
Derivada1 =@(x) 8*(exp(-x)*cos(x)-exp(-x)*sin(x));

while i<3
        
    i = i+1;

    fprintf('Iteración: %d\n\n',i)

    fxi = Ecuacion1(xi);
    fdxi = Derivada1(xi);

    xi2=xi-(fxi/fdxi);

    fprintf('xi: %f\n',xi)
    fprintf('xi+1: %f',xi2)
 
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