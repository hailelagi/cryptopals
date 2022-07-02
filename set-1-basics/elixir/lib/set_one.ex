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
end
