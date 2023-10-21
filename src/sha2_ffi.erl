-module(sha2_ffi).

-export([hash/2, hmac/3]).

hash(Data, Algorithm) ->
  crypto:hash(Algorithm, Data).

hmac(Data, Key, Algorithm) ->
  crypto:mac(hmac, Algorithm, Key, Data).
