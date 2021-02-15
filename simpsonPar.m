function [result, error] = simpsonPar(f,a,b,n)

format long;

derivada1=diff(f);    
derivada2=diff(derivada1);
derivada3=diff(derivada2);
derivada4=diff(derivada3);

f=inline(f);
h=(b-a)/n;


for k=1:1:n
    x(k)=a+k*h;
    y(k)=f(x(k));
end

sumaPar=0;
sumaImpar=0;
for k=1:1:n-1
    if rem(k,2)==1
        sumaPar=sumaPar+y(k);
    else
        sumaImpar=sumaImpar+y(k);
    end
end


    
    
gx = inline(abs(derivada4));
puntoMedio= (a+b)/2;
errorDerivada=gx(puntoMedio);

error=-((b-a)/180)*h^4*errorDerivada;
result=h/3*(f(a)+f(b)+4*sumaPar+2*sumaImpar);

end