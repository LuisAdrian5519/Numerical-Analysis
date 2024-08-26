clc, clear

fprintf('\n Ecuación: (g*m/c)*(1-exp(-(c/m)*t))')

a = input('\n     a: ');
b = input('\n     b: ');
xi = 0;

g = 9.8;
c = 15;
v = 35;
t = 9;

Erpa = 2;

EcuacionA = @(a)(g.*a./c).*(1-exp(-1.*(c./a)*t))-v;
EcuacionB = @(b)(g.*b./c).*(1-exp(-1.*(c./b)*t))-v;
EcuacionX = @(xi)(g.*xi./c).*(1-exp(-1.*(c./xi)*t))-v;

while Erpa > 0.1

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