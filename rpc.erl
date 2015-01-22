%一個簡單的 rpc 程式
-module(rpc).
-export([call/0]).


call() ->
    Pid = self(),
    Node = node(Pid),
    rpc:call(Node, erlang, is_process_alive, [Pid]).
