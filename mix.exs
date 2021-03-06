defmodule Lilac.Mixfile do
  use Mix.Project

  def project do
    [app: :lilac,
     version: "0.0.1",
     elixir: "~> 1.2.6",
     source_url: "https://github.com/Stratus3D/lilac",
     homepage_url: "https://github.com/Stratus3D/lilac",
     description: description,
     package: package,
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

  defp description do
    """
    An Elixir library that provides matchers and assertions. Uses the Erlang library teal.
    """
  end

  defp package do
    [
      files: [],
      maintainers: ["Trevor Brown"],
      licenses: ["MIT"],
      links: %{
        "GitHub": "https://github.com/Stratus3D/lilac"
      }
    ]
  end
end
