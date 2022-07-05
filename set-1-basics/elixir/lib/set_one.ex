defmodule SetOne do
  @moduledoc """
  `SetOne` Basics.

  Always operate on raw bytes, never on encoded strings.
  Only use hex and base64 for pretty-printing.
  """

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
    BitWise Operators.
    todo: bit operators,
  """
  def fixed_xor(buffer_one, buffer_two) do
    buffer_one = buffer_one |> hex_to_base64() |> Base.hex_decode32()
    buffer_two = buffer_two |> Base.decode16!(case: :lower)

    IO.inspect(buffer_one)
    # Bitwise.bxor(buffer_one, buffer_two)
  end

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
