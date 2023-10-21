import { sha224, sha256, sha384, sha512 } from "./nh_sha2.mjs"
import { hmac as nhHmac } from "./nh_hmac.mjs"

import { BitString } from "./gleam.mjs"

export function hash(data, algorithm) {
  const dataBuffer = data.buffer;
  const hasher = getHashFunction(algorithm);

  return new BitString(hasher(dataBuffer));
}

export function hmac(data, key, algorithm) {
  const dataBuffer = data.buffer;
  const keyBuffer = key.buffer;

  const hasher = getHashFunction(algorithm);

  return new BitString(nhHmac(hasher, keyBuffer, dataBuffer));
}

export function encode_hex(input) {
  const inputBuffer = input.buffer;

  return [...inputBuffer]
    .map(v => v.toString(16).padStart(2, "0"))
    .join("");
}

function getHashFunction(algorithm) {
  switch (algorithm.constructor.name) {
    case "Sha224":
     return sha224;
    case "Sha256":
     return sha256;
    case "Sha384":
     return sha384;
    case "Sha512":
     return sha512;
 }
}
