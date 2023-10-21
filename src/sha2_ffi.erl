-module(sha2_ffi).

-export([hash/2, hmac/3, encode_hex/1]).

hash(Data, Algorithm) ->
  crypto:hash(Algorithm, Data).

hmac(Data, Key, Algorithm) ->
  crypto:mac(hmac, Algorithm, Key, Data).

encode_hex(Input) ->
  binary:encode_hex(Input, lowercase).
