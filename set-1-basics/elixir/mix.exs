defmodule SetOne.MixProject do
  use Mix.Project

  @source_url "https://github.com/hailelagi/matasano/elixir"
  @version "0.1.0"


  def project do
    [
      app: :thumbelina,
      version: @version,
      elixir: "~> 1.13",
      name: "SetOne",
      source_url: @source_url,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:dialyxir, "~> 1.1", only: :dev, runtime: false},
    ]
  end
end
