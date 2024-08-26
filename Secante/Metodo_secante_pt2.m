clc, clear

fprintf('\n Ecuación: x^3.5 - 80 \n\n')

xi = 3.5;
xia = 0;
S = 0.01;
Erpa = 2;
i = 0;

Ecuacion1=@(x) (x^3.5) - 80;

while Erpa>0.1
        
    i = i+1;

    sxi = (S*xi)+xi;

    fprintf('Iteración: %d\n\n',i)

    fxi = Ecuacion1(xi);
    fsxi = Ecuacion1(sxi);
    fxia = Ecuacion1(xia);

    xi2=xi-((fxi*S*xi)/(fsxi-fxi));

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