follows(anne, fred).
follows(fred, julie).
follows(fred, susan).
follows(john, fred).
follows(julie, fred).
follows(susan, john).
follows(susan, julie).

tweeted(anne, tweet1).
tweeted(anne, tweet5).
tweeted(fred, tweet2).
tweeted(fred, tweet7).
tweeted(fred, tweet8).
tweeted(john, tweet3).
tweeted(john, tweet4).
tweeted(julie, tweet6).
tweeted(susan, tweet9).
tweeted(susan, tweet10).

fred_sees(X) :- follows(fred,Y),tweeted(Y,X).

find_friends(X,Y) :- follows(X,Y),follows(Y,X),\+(X=Y).

visible_tweets(X,Y) :- follows(X,Z),tweeted(Z,Y).

fred_sees_retweeted_tweets(Y) :- follows(fred, X), tweet(X,Y).
fred_sees_retweeted_tweets(Y) :- follows(fred, X), visible_tweets(X,Y).

