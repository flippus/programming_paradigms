edge(a,b).
edge(a,c).
edge(b,c).
edge(b,d).
edge(b,e).
edge(c,d).
edge(c,f).
edge(f,a).

path(X,Y,[]) :- edge(X,Z),append([],[X],L),path(X,Y,Z,L).
path(X,Y,V,L) :- edge(V,Z),append(L,[V],RL),\+(is_in(V, L)),path(X,Y,Z,RL).
path(X,Y,V,L) :- !.
is_in(V,[]). 
is_in(V,[H|T]) :- V=H,\+(is_in(V,T)).
