import gleam/io
import gleam/bit_string

pub type HashAlgorithm {
  Sha224
  Sha256
  Sha384
  Sha512
}

@external(erlang, "sha2_ffi", "hash")
@external(javascript, "./sha2_ffi.mjs", "hash")
pub fn hash(input: BitString, algorithm: HashAlgorithm) -> BitString

@external(erlang, "sha2_ffi", "hmac")
@external(javascript, "./sha2_ffi.mjs", "hmac")
pub fn hmac(
  data: BitString,
  key: BitString,
  algorithm: HashAlgorithm,
) -> BitString

pub fn main() {
  io.debug(hash(bit_string.from_string("trying out"), Sha224))
  io.debug(hash(bit_string.from_string("trying out"), Sha256))
  io.debug(hash(bit_string.from_string("trying out"), Sha384))
  io.debug(hash(bit_string.from_string("trying out"), Sha512))

  io.debug(hmac(
    bit_string.from_string("trying out"),
    bit_string.from_string("lol"),
    Sha256,
  ))
}
