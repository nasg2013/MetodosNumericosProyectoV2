% Esta funcion recibe una matriz de nxm
% Retorna el rango de la matriz

function [rango] = funcionRango(A)
%Se dimensión de las filas y las columnas
[fila,columna] = size(A);

%preliminar mente el rango es igual a la cantidad de filas
rango=fila;

%Se recorreo la matriz
for pivotFil=1:fila
    
   % se parcea el valor capturado a entero
   %si se encuentra una fila de ceros el rango disminuye en uno
    if  int16(A(pivotFil,:)) == 0         
        rango = rango - 1;        
    end    
end
end