# require "base64"

class SetOne
    def hex_to_base64(digest)
        # tbd: https://stackoverflow.com/questions/9986971/converting-a-hexadecimal-digest-to-base64-in-ruby
        # what magical sorcery is this
        [[digest].pack("H*")].pack("m0")
    end

    def fixed_xor(buffer_one, buffer_two)
        buffer_one + buffer_two
    end
end
