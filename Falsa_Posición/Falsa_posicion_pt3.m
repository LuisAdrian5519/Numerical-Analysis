clc

fprintf('\n Ecuación: (0.8-0.3x)/x\n')

a = input('\n     a: ');
b = input('\n     b: ');
Raiz = 1.419;
xi = 0;

EcuacionA = @(a)(0.8-0.3*a)/a;
EcuacionB = @(b)(0.8-0.3*b)/b;
EcuacionX = @(xi)(0.8-0.3*xi)/xi; 

for i=1:1:3

    fprintf('\n\na: %f\n',a)
    fprintf('b: %f\n',b)

    ComparacionAB = EcuacionA(a)*EcuacionB(b);

    if  ComparacionAB < 0
        
        xi2 = xi;

        xi = b-EcuacionB(b)*(b-a)/(EcuacionB(b)-EcuacionA(a));


        fprintf('xi: %f\n',xi)

        fprintf('f(a): %f\n',EcuacionA(a))
        fprintf('f(b): %f\n',EcuacionB(b))
        fprintf('f(xi): %f\n',EcuacionX(xi))

        ComparacionAX = EcuacionA(a)*EcuacionX(xi);

        if ComparacionAX > 0
            a = xi;

            Ea = xi - xi2;
            Erpa = (Ea / xi)*100;
            Ev = 2.6666 - xi;
            Erpv = (Ev/ 2.666)*100;

            fprintf('\nError aproximado: %f\n',Ea)
            fprintf('\nError relativo porcentual aproximado: %f \n',Erpa)
            fprintf('\nError verdadero: %f\n',Ev)
            fprintf('\nError relativo porcentual verdadero: %f \n',Erpv)
            fprintf('\n-----------------------------------------------\n')
            
            else if ComparacionAX < 0
                b = xi;

                Ea = xi - xi2;
                Erpa = (Ea / xi)*100;
                Ev = 2.6666 - xi;
                Erpv = (Ev/ 2.666)*100;

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
            