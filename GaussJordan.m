% La siguiente funcion recibe por parametro una matriz de nxm
% Procesa la matriz con un algoritmo que semeja el metodo de Gaus Jordan

function [A]=GaussJordan(A)

%FACTORIZACION GAUSSIANA
% Donde A es la matriz a trabajar

%Se dimensionan de las filas y las columnas
[fila,columna] = size(A);

%rango = Se llama a la funcionRango, la cual devuelve el rango de la matriz deseada
rango= funcionRango(A);
%cantidadVariables=define cuantas variables tiene la matriz
cantidadVariables= columna;

%Se recorreo la matriz

    if rango >= cantidadVariables
        for pivotCol=1:columna
            for pivotFil=[1:pivotCol-1,pivotCol+1:fila]        

                if A(1,1) == 0
                    %se llama la funcion eliminaCero, la cual devuelve una matriz
                    %reordenada
                   A= eliminaCero(A)
                end
                inverso = -A(pivotFil,pivotCol)/A(pivotCol,pivotCol);
                A(pivotFil,:)= A(pivotFil,:)+ inverso*A(pivotCol,:)
            end
        end         
    elseif rango < cantidadVariables
               
        for pivotCol=1:fila
            for pivotFil=[1:pivotCol-1,pivotCol+1:fila]
                if A(1,1) == 0
                    %se llama la funcion eliminaCero, la cual devuelve una matriz
                    %reordenada
                   A= eliminaCero(A)
                end
                %se calcula el inverso del numero que se desea hacer cero  
                inverso = -A(pivotFil,pivotCol)/A(pivotCol,pivotCol);
                if A(pivotCol,pivotCol) ~= 0
                    A(pivotFil,:)= A(pivotFil,:)+ inverso*A(pivotCol,:)
                end
                
            end
        end
    end
end