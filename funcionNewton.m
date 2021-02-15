function g = funcionNewton(funcion,valorX)
    
    syms x;
    derivada = diff(funcion)
   %g=@(y) y(-(f)/derivada)
    %g(valorX);


    disp ('Método de Newton');
    cf=input('Ingrese la función f(x): ','s');
    f = inline(cf);
    derivada = diff((str2sym(cf)));
    df = inline(derivada);
    tol = input('Ingrese la tolerencia: ');
    error = 100;
    x = input('Ingrese un  valor inicial: ');
    n = 0;
    Iter=input ('Ingrese el numero de iteraciones esperada:\n')
    while (error > tol && Iter>n)    
        fprintf ('\t%i\t%3.5f\t%f\n', n, x, error);
        %n = n+1;
        x = x - (f(x) / df (x));
        error = abs( f(x) );    
    end
end