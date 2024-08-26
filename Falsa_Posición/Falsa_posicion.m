clc

fprintf('\n Ecuación: -12-21x+18x^2-2.75x^3\n')

a = input('\n     a: ');
b = input('\n     b: ');
Raiz = 2.22;
xi = 0;

EcuacionA = @(a)-12-21*a+18*a^2-2.75*a^3;
EcuacionB = @(b)-12-21*b+18*b^2-2.75*b^3;
EcuacionX = @(xi)-12-21*xi+18*xi^2-2.75*xi^3;

Ea = 20;


while abs(Ea) > 0.0001

    fprintf('\n\na: %f\n',a)
    fprintf('b: %f\n',b)

    ComparacionAB = EcuacionA(a)*EcuacionB(b);

    if  ComparacionAB < 0

        xi = b-EcuacionB(b)*((b-a)/(EcuacionB(b)-EcuacionA(a)));


        fprintf('xi: %f\n',xi)

        fprintf('f(a): %f\n',EcuacionA(a))
        fprintf('f(b): %f\n',EcuacionB(b))
        fprintf('f(xi): %f\n',EcuacionX(xi))

        ComparacionAX = EcuacionA(a)*EcuacionX(xi);

        if ComparacionAX > 0
            a = xi;

            Ea = xi - b;
            Erpa = (Ea / xi)*100;

            fprintf('\nError aproximado: %f\n',Ea)
            fprintf('\nError relativo porcentual aproximado: %f \n',Erpa)
            fprintf('\n-----------------------------------------------\n')
            
            else if ComparacionAX < 0
                b = xi;

                Ea = xi - a;
                Erpa = (Ea / xi)*100;

                fprintf('\nError aproximado: %f\n',Ea)
                fprintf('\nError relativo porcentual aproximado: %f \n',Erpa)
                fprintf('\n-----------------------------------------------\n')
                else 
                break;
    
                end
        end
    end
end
