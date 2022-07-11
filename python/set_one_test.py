import unittest
from set_one import *

class SetOne(unittest.TestCase):
    def test_hex_to_base64(self):
        input = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d"
        expected = "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t"

        self.assertEqual(hex_to_base64(input), expected)

    def test_fixed_xor(self):
        buffer_one = "1c0111001f010100061a024b53535009181c"
        buffer_two = "686974207468652062756c6c277320657965"
        xor_combination = "746865206b696420646f6e277420706c6179"

        self.assertEqual(fixed_xor(buffer_one, buffer_two), xor_combination)

if __name__ == "__main__":
    unittest.main()
