gcd(A,0,A).
gcd(A,B,GCD) :- B >= A, C is B - A, gcd(A,C,GCD),!.
gcd(A,B,GCD) :- gcd(B,A,GCD).
