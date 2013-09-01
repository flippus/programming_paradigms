border(red, green).
border(red, blue).
border(green, blue).
border(green, red).
border(blue, red).
border(blue, green).

color(A,B,C,D) :- border(A,B), border(A,C), border(B,A), border(B,C), border(C,A), border(C,B), border(C,D), border(D,C).
