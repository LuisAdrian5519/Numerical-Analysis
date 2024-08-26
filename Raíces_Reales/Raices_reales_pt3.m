clc

fprintf('\n Ecuación: -25+82x-90x^2+44x^3-8x^4+0.7x^x^5\n')

a = input('\n     a: ');
b = input('\n     b: ');
xi = 0;

EcuacionA = @(a)-25+82*a-90*a^2+44*a^3-8*a^4+0.7*a^5;
EcuacionB = @(b)-25+82*b-90*b^2+44*b^3-8*b^4+0.7*b^5;
EcuacionX = @(xi)-25+82*xi-90*xi^2+44*xi^3-8*xi^4+0.7*xi^5;

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