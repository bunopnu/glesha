import gleeunit
import gleeunit/should
import glesha2

pub fn main() {
  gleeunit.main()
}

pub fn sha224_empty_test() {
  let hash = glesha2.hash(<<>>, glesha2.Sha224)
  let expected = <<
    209, 74, 2, 140, 42, 58, 43, 201, 71, 97, 2, 187, 40, 130, 52, 196, 21, 162,
    176, 31, 130, 142, 166, 42, 197, 179, 228, 47,
  >>

  hash
  |> should.equal(expected)
}

pub fn sha256_empty_test() {
  let hash = glesha2.hash(<<>>, glesha2.Sha256)
  let expected = <<
    227, 176, 196, 66, 152, 252, 28, 20, 154, 251, 244, 200, 153, 111, 185, 36,
    39, 174, 65, 228, 100, 155, 147, 76, 164, 149, 153, 27, 120, 82, 184, 85,
  >>

  hash
  |> should.equal(expected)
}

pub fn sha384_empty_test() {
  let hash = glesha2.hash(<<>>, glesha2.Sha384)
  let expected = <<
    56, 176, 96, 167, 81, 172, 150, 56, 76, 217, 50, 126, 177, 177, 227, 106, 33,
    253, 183, 17, 20, 190, 7, 67, 76, 12, 199, 191, 99, 246, 225, 218, 39, 78,
    222, 191, 231, 111, 101, 251, 213, 26, 210, 241, 72, 152, 185, 91,
  >>

  hash
  |> should.equal(expected)
}

pub fn sha512_empty_test() {
  let hash = glesha2.hash(<<>>, glesha2.Sha512)
  let expected = <<
    207, 131, 225, 53, 126, 239, 184, 189, 241, 84, 40, 80, 214, 109, 128, 7,
    214, 32, 228, 5, 11, 87, 21, 220, 131, 244, 169, 33, 211, 108, 233, 206, 71,
    208, 209, 60, 93, 133, 242, 176, 255, 131, 24, 210, 135, 126, 236, 47, 99,
    185, 49, 189, 71, 65, 122, 129, 165, 56, 50, 122, 249, 39, 218, 62,
  >>

  hash
  |> should.equal(expected)
}
