# Set One
import base64

def hex_to_base64(s):
    return str(base64.b64encode(bytes.fromhex(s)))[2:-1]

def fixed_xor(s, buffer):
    return hex(int(s, 16) ^ int(buffer, 16))[2:]


    
if __name__ == "__main__":
    self.main()
