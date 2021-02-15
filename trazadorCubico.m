function [result] = trazadorCubico(n,X,A)
format long
%Funsión trazador cubico
%Según Libro de Analisis Numerico

%Paso 1 Para i = 0, 1, . . . , n ? 1 haga hi = xi+1 ? xi .
for i=1:n-1
    	h(i)=X(i+1)-X(i);
end

%Paso 2 Para i = 1, 2, . . . , n ? 1 haga 
% ?i = 3/hi(ai+1 ? ai ) ? 3/hi?1(ai ? ai?1).

for i=2:n-1
    Ecuacion(i)=3/h(i)*(A(i+1)-A(i))-3/h(i-1)*(A(i)-A(i-1));
end

%Paso 3
L(1)=1; %l
U(1)=0; %U
Z(1)=0; %z

%Paso 4 Para i = 1, 2, . . . , n ? 1 haga:
for i=2:n-1
    %li = 2(xi+1 ? xi?1) ? hi?1?i?1;
    L(i)=2*(X(i+1)-X(i-1))-h(i-1)*U(i-1);
    %?i = hi /li ;
    U(i)=h(i)/L(i);
    %zi = (?i ? hi?1zi?1)/li
    Z(i)=(Ecuacion(i)-(h(i-1)*Z(i-1)))/L(i);    
end

%Paso 5
L(n)=1;
Z(n)=0;
C(n)=0;

%Paso 6: Para j = n ? 1, n ? 2, . . . , 0
for j=n-1:-1:1
    %c j = z j ? ?j c j+1;
       C(j)=Z(j)-U(j)*C(j+1);
    %bj = (aj+1 ? aj )/h j ? h j (c j+1 + 2c j )/3;
       B(j)=(A(j+1)-A(j))/h(j)-h(j)*(C(j+1)+2*C(j))/3;
    %dj = (c j+1 ? c j )/(3h j )
       D(j)=(C(j+1)-C(j))/(3*h(j));
end

A= transpose(A);
A(length(A),:)= [];

B= transpose(B);
D= transpose(D);

C= transpose(C);
C(length(C),:)= [];

result=[A B C D];
end











