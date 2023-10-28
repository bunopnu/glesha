import { sha224, sha256, sha384, sha512 } from "./nh_sha2.mjs"
import { hmac as nhHmac } from "./nh_hmac.mjs"

import { BitArray } from "./gleam.mjs"
import { Sha224, Sha256, Sha384, Sha512 } from "./glesha.mjs"

export function hash(data, algorithm) {
  const dataBuffer = data.buffer;
  const hasher = getHashFunction(algorithm);

  return new BitArray(hasher(dataBuffer));
}

export function hmac(data, key, algorithm) {
  const dataBuffer = data.buffer;
  const keyBuffer = key.buffer;

  const hasher = getHashFunction(algorithm);

  return new BitArray(nhHmac(hasher, keyBuffer, dataBuffer));
}

export function encode_hex(input) {
  const inputBuffer = input.buffer;

  return [...inputBuffer]
    .map(v => v.toString(16).padStart(2, "0"))
    .join("");
}

function getHashFunction(algorithm) {
  if (algorithm instanceof Sha224) {
    return sha224;
  } else if (algorithm instanceof Sha256) {
    return sha256;
  } else if (algorithm instanceof Sha384) {
    return sha384;
  } else if (algorithm instanceof Sha512) {
    return sha512;
  } else {
    throw new Error("Unknown algorithm")
  }
}
