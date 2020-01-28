function f = matrix()
[A] = input('Please input the data for matrix [A]: ');
b = input('Please input the data for column b: ');
[m, n] = size(A);
[a, s] = size(b);
determinant = det(A);
if(m ~=n)
     disp('A must be a square matrix');   
end
if(s ~= 1)
     disp('b must be a column vector');
end
if(a ~= n)
    disp('The dimensions of A and b must match');
end
if(determinant == 0)
    disp('Determinant of A must be nonzero');
end


end