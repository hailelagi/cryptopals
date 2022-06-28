extern crate base64;

// use base64::{encode, decode};

fn main() {
    println!("Set one solutions");
}

// working with strings is hard in rust ugh
pub fn hex_to_base64(hex_string: &str) -> String {
    print!("{}", hex_string);
    let s = String::new();

    return s
}

#[cfg(test)]
mod tests {
    // use super::*;

    #[test]
    fn test_hex_to_base64() {
        let input = "49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d";
        let expected = "SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t";

        assert_eq!(input, expected);
    }
}
