%recibe por parametro una matriz y devuelve el determinante de la misma
function [result] = determinante(matriz)

    for i=1:1:size(matriz,1)
        
        %se pregunta si la matriz es de tamaño 1x1
        if size(matriz,1)==1
            result=matriz;
        else
            n=((-1)^(1+i))*matriz(1,i);
            [tamFila,tamColumna]=size(matriz);
            %se contruye una matriz identidad de del tamaño de la matriz
            %original menos uno
            matrizAux=eye(tamFila-1);
            pivotFila=1;
            pivotColumna=1;
            
            for k=1:1:tamFila
                for j=1:1:tamColumna
                    if k~=1
                        if j~=i
                            %se van tomando los valores de la matriz
                            %original y se guardan en la matriz axiliar,
                            %formando una matriz menor
                            matrizAux(pivotFila, pivotColumna)=matriz(k,j);
                            pivotColumna=pivotColumna+1;
                        end
                    end
                end
                pivotColumna=1;
                if(k~=1)
                    pivotFila=pivotFila+1;
                end
            end
            %se calcula el determinate de la matriz auxiliar y se guarda
            %dentro de un vector de determinates
            %se vuelve a buscar la matriz menor, asi tantas veces se pueda
            %redicir (hasta llegar a una matriz de orden 2)
            result(i)=(n*determinante(matrizAux));
            %al final se suman los determinantes guardados en el vector de
            %determinantes obteniendo el valor del determinante real
            result=sum(result);
        end
    end
end