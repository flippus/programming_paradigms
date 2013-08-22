-module(login).
-export([loop/0]).

loop () ->
        receive 
            {PID, user, password} ->
                if 
                    checkPassword(user, password) == True -> PID ! accepted;
                    true -> PID ! not_accepted
                end,
            loop(),
        end.
