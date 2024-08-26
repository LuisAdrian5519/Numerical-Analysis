clc, clear

fprintf('\n Ecuación: -x^2+1.8x+2.5 \n\n\n')

xi = 5;
xia = 0;
Erpa = 2;

Ecuacion1=@(x) sqrt((1.8*x)+2.5);

while Erpa>0.05
        
    i = i+1;

    fprintf('Iteración: %d\n\n',i)

    fxi = Ecuacion1(xi);

    fprintf('xi: %f\n',xi)
    fprintf('f(xi): %f',fxi)
 
    if xi ~= 0

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