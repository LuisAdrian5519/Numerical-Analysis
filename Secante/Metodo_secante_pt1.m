clc, clear

fprintf('\n Ecuación: sen x + cos(1+x^2)-1 \n\n')

xi = 3;
xia = 1;
Erpa = 2;
i = 0;

Ecuacion1=@(x) sin(x)+cos(1+x^2)-1;

while i<17
        
    i = i+1;

    fprintf('Iteración: %d\n\n',i)

    fxi = Ecuacion1(xi);
    fxia = Ecuacion1(xia);

    xi2=xi-((fxi*(xia-xi))/(fxia-fxi));

    fprintf('xi: %f\n',xi)
    fprintf('f(xi): %f',xi2)
 

        Ea = (xi - xia)/xi;
        Erpa = abs((Ea)*100);
              
        xia = xi;
        xi = xi2;

        fprintf('\nError aproximado: %f\n',Ea)
        fprintf('Error relativo porcentual aproximado: %f \n',Erpa)
        
        fprintf('\n-----------------------------------------------\n')

end