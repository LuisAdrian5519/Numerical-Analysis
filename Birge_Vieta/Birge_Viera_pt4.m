clc

fprintf('\nFunción: x4-x3-x-1\n')

iter=@(a,b,c) a-(b/c);
Erpa=@(ac,an) ((ac-an)/ac)*100; 
i=0;

P1=[1 1 1 -1 -1];
P2=[1 0 0 0];
P3=[1 0 0 0];
xi=-(-1/-1);
Data=[0 0 0 0];

while(i<10)
    xa=xi;
    a=2;
    while(a<=4)
        P2(a)=P1(a)+P2(a-1)*xi;
        a=a+1;
    end
    r1=P2(a-1)
    a=2;
    while(a<=3)
        P3(a)=P2(a)+(P3(a-1)*xi);
        a=a+1;
    end
    r2=P3(a-1)
    xi=iter(xi,r1,r2);
    Ea=Erpa(xi,xa);
    Ea=abs(Ea);
    Data=[Data;xi r1 r2 Ea]
    i=i+1;
end
fprintf('-------------------------------------------\nRaiz: %f \n',xi)
fprintf('\nIteraciones: %d \n',i)
fprintf('\nError relativo porcentual verdadero: %f \n',Ea)
