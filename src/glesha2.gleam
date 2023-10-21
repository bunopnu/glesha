import gleam/io
import gleam/bit_string

pub type HashAlgorithm {
  Sha224
  Sha256
  Sha384
  Sha512
}

@external(erlang, "crypto", "hash")
@external(javascript, "./sha2_ffi.mjs", "hash")
pub fn hash(algorithm: HashAlgorithm, input: BitString) -> BitString

pub fn main() {
  io.debug(hash(Sha256, bit_string.from_string("trying out")))
}
