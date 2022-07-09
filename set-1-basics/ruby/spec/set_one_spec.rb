require "set_one"

RSpec.describe SetOne do
  it "converts hex to base64" do
    input = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"
    expected = "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t"

    expect(SetOne.new().hex_to_base64(input)).to eq(expected)
  end

  it "produces xor combination" do
    buffer_one = "1c0111001f010100061a024b53535009181c"
    buffer_two = "686974207468652062756c6c277320657965"
    expected = "746865206b696420646f6e277420706c6179"

    expect(SetOne.new().fixed_xor(buffer_one, buffer_two)).to eq(expected)
  end
end
