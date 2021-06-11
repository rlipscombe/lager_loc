%%%-------------------------------------------------------------------
%% @doc lager_loc public API
%% @end
%%%-------------------------------------------------------------------

-module(lager_loc_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    lager_loc_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
