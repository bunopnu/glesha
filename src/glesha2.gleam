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

@external(erlang, "sha2_ffi", "hex")
@external(javascript, "./sha2_ffi.mjs", "hex")
pub fn hex(input: BitString) -> String

pub fn main() {
  io.println(hex(hash(bit_string.from_string("trying out"), Sha224)))
}
