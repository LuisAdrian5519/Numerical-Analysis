clc, clear

fprintf('\n Ecuación: (1-((Q^2)/(g*A^3))*B)')

a = input('\n     a: ');
b = input('\n     b: ');
xi = 0;
y = 0;
Contador = 0;

g = 9.8;
Q = 20;
A = 3*y + y^2/2;
B = 3+y;
t = 9;

Erpa = 2;

EcuacionA = @(y)(1-((Q^2)/(g*(3*y + y^2/2)^3))*(3+y));
EcuacionB = @(y)(1-((Q^2)/(g*(3*y + y^2/2)^3))*(3+y));
EcuacionX = @(y)(1-((Q^2)/(g*(3*y + y^2/2)^3))*(3+y));

while Erpa > 1 && Contador < 10

    Contador = Contador + 1;

    fprintf('\n\na: %f\n',a)
    fprintf('b: %f\n',b)
    
    y = a;
    EcuacionAA = EcuacionA(y);
    y = b;
    EcuacionBB = EcuacionB(y);

    ComparacionAB = EcuacionAA*EcuacionBB;

    if  ComparacionAB < 0
        
        xi2 = xi;

        xi = (a+b)/2;

        y = xi;

        fprintf('xi: %f\n',xi)

        fprintf('f(a): %f\n',EcuacionAA)
        fprintf('f(b): %f\n',EcuacionBB)
        fprintf('f(xi): %f\n',EcuacionX(y))

        ComparacionAX = EcuacionAA*EcuacionX(y);

        if ComparacionAX > 0
            a = xi;

            Ea = (xi - xi2)/xi;
            Erpa = abs((Ea)*100);

            fprintf('\nError aproximado: %f\n',Ea)
            fprintf('\nError relativo porcentual aproximado: %f \n',Erpa)
            fprintf('\n-----------------------------------------------\n')
            
        else 
            
            if ComparacionAX < 0
                b = xi;

                Ea = (xi - xi2)/xi;
                Erpa = abs((Ea)*100);
              
            fprintf('\nError aproximado: %f\n',Ea)
            fprintf('\nError relativo porcentual aproximado: %f \n',Erpa)
            fprintf('\n-----------------------------------------------\n')
            else 
                
                break;
    
            end
        end
    end
end