clc, clear

fprintf('\n Ecuación: x^3-(2*x^2)-(4*x)+8 \n')

xi = 1.2;
xia = 10;
Erpa = 2;

Ecuacion1=@(x) x^3-(2*x^2)-(4*x)+8;
Derivada1 =@(x) (3*x^2)-(4*x)-4;
Derivada2 =@(x) (6*x)-4;

while Erpa>0.01
        
    i = i+1;

    fprintf('Iteración: %d\n\n',i)

    fxi = Ecuacion1(xi);
    fdxi = Derivada1(xi);
    fdxi2 = Derivada2(xi);

    xi2=xi-((fxi*fdxi)/((fdxi^2)-(fxi)*(fdxi2)));

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