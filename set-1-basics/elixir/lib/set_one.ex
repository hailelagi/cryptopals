defmodule SetOne do
  @moduledoc """
  `SetOne` Basics.

  Always operate on raw bytes, never on encoded strings.
  Only use hex and base64 for pretty-printing.
  """
  import Bitwise

  @doc """
    Base64 is binary to text encoding.

    if ascii/utf-8:
    Base.encode64("Many hands make light work.")
    ==> "TWFueSBoYW5kcyBtYWtlIGxpZ2h0IHdvcmsu"

    binary -> sequence of 8bit bytes
    Base.encode64(<<0000000::8>>) == "A"
  """
  def hex_to_base64(hex_str) do
    hex_str
    |> Base.decode16!(case: :lower)
    |> Base.encode64()
  end

  @doc """
    Exclusive OR has the useful ppty, if x and y in a set {0, 1} ^ n
    and x is a uniform rand var, y is rand (in some distro) then:
    x (+) y = z(uniform rand var)

    XOR of two bits 0 and 1 is:
    x (+) y - base 2
  """
  def fixed_xor(buffer_one, buffer_two) do
    buffer_one = parse_buffer(buffer_one)
    buffer_two = parse_buffer(buffer_two)

    bxor(buffer_one, buffer_two)
    |> :binary.encode_unsigned()
    |> Base.encode16(case: :lower)
  end

  defp parse_buffer(buffer), do: buffer |> :binary.decode_hex() |> :binary.decode_unsigned()

  @doc """
    More bit ops what else would you like to be done omg I love these keys shit.
  """
  def single_byte_xor do
    nil
  end


  @doc """
    Even More bit ops
  """
  def detect_single_character do

  end

  @doc """
    Key
  """
  def repeating_key do
    nil
  end

  def break_repeating_key do
    nil
  end

  def aes_in_ecb do
    nil
  end

  def detect_aes_in_ecb do
    nil
  end
end
