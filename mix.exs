defmodule Lilac.Mixfile do
  use Mix.Project

  def project do
    [app: :lilac,
     version: "0.0.1",
     elixir: "~> 1.0.0",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:teal, git: "https://github.com/Stratus3D/teal.git", tag: "v0.1.1"},
      {:ex_doc, "~> 0.7", only: :dev}
    ]
  end
end
