-module(master2).
-export([master/1]).

% start
% Master = spawn(master2,master2,[[]]).

master(Slaves) ->
    process_flag(trap_exit,true),
    receive
        create ->
            Child = spawn(fun slave/0),
            link(Child),
            master([Child|Slaves]);
        {send, X} ->
            lists:foreach(fun(N) -> N ! X end, Slaves),
            master(Slaves);
        kill ->
            lists:foreach(fun(N) -> (unlink(N)) and (N ! terminate) end, Slaves),
            master(Slaves);
        terminate ->
            lists:foreach(fun(N) -> (unlink(N)) and (N ! terminate) end, Slaves);
        {'EXIT',From,Reason} ->
            unlink(From),
            lists:delete(From,Slaves),
            self() ! create,
            master(Slaves);
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
