reverselist([],[]).
reverselist([H|T],RL) :- reverselist(T,Z), append(Z,[H],RL).

