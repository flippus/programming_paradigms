loco(l1).
loco(l2).
loco(l3).

assign(T1,T2,T3,T4) :- loco(T1),
                        loco(T2),
                        loco(T3),
                        loco(T4),
                        T1 \= T2,
                        T2 \= T3,
                        T2 \= T4,
                        T3 \= T4,
                        T3 \= l3,
                        T4 \= l2,
                        T4 \= l3.
