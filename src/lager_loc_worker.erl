-module(lager_loc_worker).
-export([start_link/0]).
-behaviour(gen_server).
-export([init/1, handle_call/3, handle_info/2, handle_cast/2]).

start_link() ->
    gen_server:start_link(?MODULE, [], []).

init(_) ->
    lager:info("start"),
    timer:send_interval(1000, ping),
    {ok, undefined}.

handle_call(_Req, _From, State) ->
    {reply, ok, State}.

handle_info(ping, State) ->
    lager:info("ping"),
    {noreply, State}.

handle_cast(_Req, State) ->
    {noreply, State}.
