-module(greeter).
-export([hello/1]).
-export([hello/0]).

hello(N) -> io:format("Hello ~p!\n",[N]).
hello() -> io:format("Hello World!\n").

% b
% Hello = fun(N) -> io:format("Hello ~p!\n",[N]) end.
% F = Hello(ich).
% Output:
% Hello ich!
% ok

% greeter:hello(F).
% Output;                                  
% Hello ok!
% ok

% c
% L = ["Philipp", "Constantin", "Lisa"].
% lists:foreach(Hello,L).
% Output:
% Hello "Philipp"!
% Hello "Constantin"!
% Hello "Lisa"!
% ok

% Without "":
% Hello3 = fun(N) -> io:format("Hello "++N++"!\n") end.








