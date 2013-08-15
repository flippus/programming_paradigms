-module(printer).
-export([print/0]).
-export([sendback/0]).
-export([sendbacknew/0]).
-export([sendandreceivemessage/2]).
-export([fac/1]).
-export([client/0]).

% before starting the process, compile the file:
% c(printer).

% starting process:
% Pid = spawn(fun printer:print/0).

% send messages: 
% Pid ! message.

print() -> 
    receive
        X -> X,
        print()
    end.

% b    
% sendback and sendandreceivemessage are for communicating
% start a process with sendback and another with sendandreceivemessage
% Pid = spawn(fun printer:sendback/0).
    
sendback() -> 
    receive
        {Pid, X} ->
            Pid ! X,
            sendback()
    end.
    
% send message:
% printer:sendandreceivemessage(Pid, message).
     
sendandreceivemessage(To, Message) -> 
    To ! {self(), Message},
    receive
        X -> X
    end.
    
% c

sendbacknew() ->
    receive
        {Pid, X} -> Pid ! fac(X),
        sendbacknew()
    end. 
    
fac(0) -> 1;
fac(N) -> N * fac(N-1).

% d

% start server:
% register(facsrv,spawn(fun printer:sendbacknew/0)).

% start client process:
% spawn(fun printer:client/0).

client() ->
    facsrv ! {self(), 5},
    receive
        X -> X
    end,
    facsrv ! {self(), 7},
    receive
        Y -> Y
    end.
     

