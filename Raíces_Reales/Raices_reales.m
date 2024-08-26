clc

fprintf('\n Ecuación: -0.5x^2+2.5x+4.5\n')

a = input('\n     a: ');
b = input('\n     b: ');
xi = 0;

EcuacionA = @(a)-0.5*a^2+2.5*a+4.5;
EcuacionB = @(b)-0.5*b^2+2.5*b+4.5;
EcuacionX = @(xi)-0.5*xi^2+2.5*xi+4.5;

for i=1:1:3

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
            Erpa = (Ea / xi)*100;
            Ev = 6.4051 - xi;
            Erpv = (Ev/ 6.4051)*100;

            fprintf('\nError aproximado: %f\n',Ea)
            fprintf('\nError relativo porcentual aproximado: %f \n',Erpa)
            fprintf('\nError verdadero: %f\n',Ev)
            fprintf('\nError relativo porcentual verdadero: %f \n',Erpv)
            fprintf('\n-----------------------------------------------\n')
            
            else if ComparacionAX < 0
                b = xi;

                Ea = xi - a;
                Erpa = (Ea / xi)*100;
                Ev = 6.4051 - xi;
                Erpv = (Ev/ 6.4051)*100;

                fprintf('\nError aproximado: %f\n',Ea)
                fprintf('\nError relativo porcentual aproximado: %f \n',Erpa)
                fprintf('\nError verdadero: %f\n',Ev)
                fprintf('\nError relativo porcentual verdadero: %f \n',Erpv)
                fprintf('\n-----------------------------------------------\n')
                else 
                break;
    
                end
        end
    end
end