clc

fprintf('\n Ecuación: log(x^2)-0.7\n')

a = input('\n     a: ');
b = input('\n     b: ');
Raiz = 1.419;
xi = 0;

EcuacionA = @(a)log(a^2)-0.7;
EcuacionB = @(b)log(b^2)-0.7;
EcuacionX = @(xi)log(xi^2)-0.7;

for i=1:1:3

    fprintf('\n\na: %f\n',a)
    fprintf('b: %f\n',b)

    ComparacionAB = EcuacionA(a)*EcuacionB(b);

    if  ComparacionAB < 0

        xi = b-EcuacionB(b)*(b-a)/(EcuacionB(b)-EcuacionA(a));


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