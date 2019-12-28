predicates
 
add(integer,integer)
substruct(integer,integer)
multiply(integer,integer)
divide(integer,integer)
fadd(real,real)
fsubstruct(real,real)
fmultiply(real,real)
fdivide(real,real)
sum(real,real,real,real)
 
clauses
/* Операции с целыми числами */
add(X,Y) :- Z = X + Y, write("Сумма целых чисел (add): ", X, " + ", Y, " = ", Z), nl.
substruct(X,Y) :- Z = X - Y, write("Разность целых чисел (substruct): ", X, " - ", Y, " = ", Z), nl.
multiply(X,Y) :- Z = X * Y, write("Умножение целых чисел (multiply): ", X, " * ", Y, " = ", Z), nl.
divide(X,Y) :- Z = X / Y, write("Деление целых чисел (divide): ", X, " / ", Y, " = ", Z), nl.
sum(X,Y,A,B) :- Z = X + Y + A + B, write("Сумма четырех целых чисел (sum): ", X, " + ", Y, " + ", A, " + ", B, " = ", Z), nl.
 
/* Операции с вещественными числами */
fadd(P,Q) :- R = P + Q, write("Fsum = ", R), nl.
fsubstruct(P,Q) :- R = P - Q, write("Fdiff = ", R), nl.
fmultiply(P,Q) :- R = P * Q, write("Fpro = ", R), nl.
fdivide(P,Q) :- R = P / Q, write("Fquo = ", R), nl.
 
goal
write("Result: "), nl, nl,
add(44,23), 
substruct(44,23),
multiply(44,23),
divide(44,23),
sum(3,4,2,9),
fadd(12.65,7.30),
fsubstruct(12.65,7.30),
fmultiply(12.65,7.30),
fdivide(12.65,7.30), nl,
write("Операции успешно выполнены").
