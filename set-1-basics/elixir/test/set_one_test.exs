defmodule SetOneTest do
  use ExUnit.Case, async: true

  test "converts hex to base64" do
    input = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"
    expected = "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t"

    assert SetOne.hex_to_base64(input) == expected
  end

  test "produces xor combination" do
    buffer_one = "1c0111001f010100061a024b53535009181c"
    buffer_two = "686974207468652062756c6c277320657965"

    assert SetOne.fixed_xor(buffer_one, buffer_two) == "746865206b696420646f6e277420706c6179"
  end
end
