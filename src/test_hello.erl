-module(test_hello).
-include_lib("eunit/include/eunit.hrl").

-ifdef(EUNIT).
hello_test()-> {<<"Hello, leptus!\n">>, _State} = hello:get("/", undef, undef),ok.

hi_test()-> 
    Req = #{bindings => #{name => <<"fred">>},
%       body_length => 0,cert => undefined,has_body => false,
%       headers =>
%           #{<<"accept">> => <<"*/*">>,<<"host">> => <<"localhost:8080">>,
%             <<"user-agent">> => <<"curl/7.58.0">>},
%       host => <<"localhost">>,host_info => undefined,method => <<"GET">>,
%       path => <<"/hi/fred">>,path_info => undefined,
%       peer => {{127,0,0,1},34410},
%       pid => <0.278.0>,port => 8080,qs => <<>>,ref => leptus_http,
%       scheme => <<"http">>,
%       sock => {{127,0,0,1},8080},
       streamid => 1,version => 'HTTP/1.1'},
    
    Res = hello:get("/hi/:name", Req, undef),
            io:format("~p~n",[Res]),
            ok.


-endif.
