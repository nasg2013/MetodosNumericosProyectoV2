%Recibe una matriz la cual posee un valor de cero en la posicion 1,1
%Retorna la matriz con inercambio de filas
function [A]=eliminaCero(A)
[fila,columna] = size(A);
    for pivotFila=2:fila
        
        %busca la fila que no empieze con cero y la intercambia
         if A(fila,1) ~= 0         
              filaTemp = A(1,:);
              A(1,:)= A(fila,:);
              A(fila,:)=filaTemp;                       
         end
    end    
end