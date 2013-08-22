inside(olga, katarina).
inside(natasha, olga).
inside(irina, natasha).

directlyIn(A,B) :- inside(A,B).

in(A,B) :- directlyIn(A,B).
in(A,B) :- inside(A,C), in(C,B).

