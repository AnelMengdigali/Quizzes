zip([F1|R1], [F2|R2], pair(F1, F2) ).
zip([F1|R1], [F2|R2], Z ):- zip(R1, R2, Z).

p(1,2).
p(2,4).
p(3,2).
p(3,4).
q(X,Z):-p(X,Y), p(Z,Y).

betw( L, U, X ):- L =< U, X is L.
betw( L, U, X ):- L < U, T is L + 1, betw( T, U, X ).

even([],[]).
even([H|R1],[H|R2]):- 0 is H mod 2, even(R1, R2).
even([H|R1], R2):- 1 is H mod 2, even(R1, R2).

singleton([],[]).
singleton([H|R1],[[H]|R2]):- singleton(R1, R2).

positive([],[]).
positive([H|R1], [H|R2]):- H > 0, positive(R1, R2).
positive([H|R1], R2):- H < 0, positive(R1, R2).

range(I,I,[I]).
range(I,K,[I|L]) :- I < K, I1 is I + 1, range(I1,K,L).

b(a).
b(b).
c(a).
c(b).
d(x,y).
d(y,x).
a(X,Y):-b(X),c(Y).
a(X,Y):-d(X,Y),!.





