defmodule OpenbillWebhooks.Mixfile do
  use Mix.Project

  def project do
    [app: :openbill_webhooks,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [
      applications: [:httpotion, :poolboy, :postgrex, :boltun, :logger],
      mod: {OpenbillWebhooks, []}
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:boltun, "~> 1.0.1"},
      {:httpotion, "~> 2.2.0"},
      {:poolboy, "~> 1.5"},
      {:postgrex, ">= 0.11.0"}
   ]
  end
end
