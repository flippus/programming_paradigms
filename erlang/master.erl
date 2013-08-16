-module(master).
-export([master/1]).

% start
% Master = spawn(master,master,[[]]).

master(Slaves) ->
    receive
        create ->
            Child = spawn(fun slave/0),
            master([Child|Slaves]);
        {send, X} ->
            lists:foreach(fun(N) -> N ! X end, Slaves),
            master(Slaves);
        kill ->
            lists:foreach(fun(N) -> N ! terminate end, Slaves),
            master(Slaves);
        terminate ->
            lists:foreach(fun(N) -> N ! terminate end, Slaves);
        _ ->
            master(Slaves)
    end.

slave() ->
    receive
        terminate -> 
            io:format("~p terminates\n",[self()]);
        X -> 
            io:format("~p: ~p\n",[self(), X]),
            slave()                
    end.
