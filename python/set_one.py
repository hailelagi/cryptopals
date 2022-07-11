# Set One
import base64

def hex_to_base64(hex_str):
    hex_str = bytes.fromhex(hex_str)

    return str(base64.b64encode(hex_str))[2:-1]

def fixed_xor(buffer_one, buffer_two):
    return buffer_one + buffer_two

if __name__ == "__main__":
    self.main()
