%%%-------------------------------------------------------------------
%% @doc erest public API
%% @end
%%%-------------------------------------------------------------------

-module(erest_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1, prep_stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    %erest_sup:start_link().
    leptus:start_listener(http, [{'_', [{hello, undefined_state}]}],[{ip,{0,0,0,0}}]).


%%--------------------------------------------------------------------
stop(_State) ->
    ok.

prep_stop(_State) ->
    leptus:stop_listener(http),
    io:format("erest prep_stop called~n"),
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
