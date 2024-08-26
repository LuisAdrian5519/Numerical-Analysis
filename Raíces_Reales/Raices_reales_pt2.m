clc

fprintf('\n Ecuación: 5x^3-5x^2+6x-2\n')

a = input('\n     a: ');
b = input('\n     b: ');
xi = 0;

EcuacionA = @(a)5*a^3-5*a^2+6*a-2;
EcuacionB = @(b)5*b^3-5*b^2+6*b-2;
EcuacionX = @(xi)5*xi^3-5*xi^2+6*xi-2;

Erpa = 20;

while Erpa > 10

    fprintf('\n\na: %f\n',a)
    fprintf('b: %f\n',b)

    ComparacionAB = EcuacionA(a)*EcuacionB(b);

    if  ComparacionAB < 0

        xi = (a+b)/2;
        fprintf('xi: %f\n',xi)

        fprintf('f(a): %f\n',EcuacionA(a))
        fprintf('f(xi): %f\n',EcuacionX(xi))

        ComparacionAX = EcuacionA(a)*EcuacionX(xi);

        if ComparacionAX > 0
            a = xi;

            Ea = xi - b;
            Erpa = abs((Ea / xi)*100);

            fprintf('\nError aproximado: %f\n',Ea)
            fprintf('\nError relativo porcentual aproximado: %f \n',Erpa)
            fprintf('\n-----------------------------------------------\n')
            
        else 
            if ComparacionAX < 0
                
                    b = xi;

                Ea = xi - a;
                Erpa = abs((Ea / xi)*100);

                fprintf('\nError aproximado: %f\n',Ea)
                fprintf('\nError relativo porcentual aproximado: %f \n',Erpa)
                fprintf('\n-----------------------------------------------\n')
                else 
                break;
    
            end
        end
    end
end