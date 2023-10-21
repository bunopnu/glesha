# Glesha

[![Test Status](https://github.com/bunopnu/glesha/actions/workflows/test.yml/badge.svg)](https://github.com/bunopnu/glesha/actions/workflows/test.yml)
[![Package Version](https://img.shields.io/hexpm/v/glesha)](https://hex.pm/packages/glesha)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/glesha/)

SHA-2 for Gleam, supporting both Erlang and JavaScript 💖

## Installation

To add the library, simply execute the following command:

```sh
gleam add glesha
```

## Example

```gleam
"howdy!"
|> bit_string.from_string()
|> glesha.hash(glesha.Sha256)
|> glesha.hex()
// 08419486253228102a04995a0376ffdaec0bf1dbaf9cff3669f34d29ad483a02
```

## Reliability

This package uses the battle-tested [`crypto`](https://www.erlang.org/doc/man/crypto) module for Erlang/OTP and the reputable [`noble-hashes`](https://github.com/paulmillr/noble-hashes) library for JavaScript.

## Documentation

Consult the [HexDocs](https://hexdocs.pm/glesha/) for API reference.

## License

Glesha is licensed under the MIT license.
