//// Documentation for Glesha.

/// Represents available hash algorithms.
pub type HashAlgorithm {
  Sha224
  Sha256
  Sha384
  Sha512
}

/// Computes the hash of the given input using the specified `Algorithm`.
@external(erlang, "sha2_ffi", "hash")
@external(javascript, "./sha2_ffi.mjs", "hash")
pub fn hash(input: BitString, algorithm: HashAlgorithm) -> BitString

/// Generates an HMAC using the specified `Algorithm`.
@external(erlang, "sha2_ffi", "hmac")
@external(javascript, "./sha2_ffi.mjs", "hmac")
pub fn hmac(
  data: BitString,
  key: BitString,
  algorithm: HashAlgorithm,
) -> BitString

/// Converts `BitString` into a lowercase hexadecimal string.
@external(erlang, "sha2_ffi", "encode_hex")
@external(javascript, "./sha2_ffi.mjs", "encode_hex")
pub fn encode_hex(input: BitString) -> String