-module(lager_loc).
-export([start/0]).

start() ->
    {ok, _} = application:ensure_all_started(lager_loc).
