clc, clear

fprintf('\n Ecuación: 0.95x^3-5.9x^2+10.9x-6 \n')

i = 0;
xi = 3.5;
xia = 10;
Erpa = 2;

Ecuacion1=@(x) (0.95*x^3)-(5.9*x^2)+(10.9*x)-6;
Derivada1 =@(x) (2.85*x^2)-(11.8*x)+10.9;
Derivada2 =@(x) (5.7*x)-11.8;

while i<3
        
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