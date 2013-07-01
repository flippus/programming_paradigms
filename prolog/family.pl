parent(john,sarah).
parent(john,jim).
parent(mary,sarah).
parent(mary,jim).
parent(sarah,betty).
parent(dave,betty).
parent(jim,jill).
parent(jim,susan).
parent(kate,jill).
parent(kate,susan).

female(sarah).
female(mary).
female(betty).
female(jill).
female(kate).
female(susan).
male(john).
male(jim).
male(dave).

sister(X,Y) :- female(X),parent(Z,Y),parent(Z,X),female(Z),\+(X=Y).

grandfather(X,Y) :- male(X),parent(Z,Y),parent(X,Z).

aunt(X,Y) :- female(X),parent(Z,Y),sister(X,Z).


