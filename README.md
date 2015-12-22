Lilac
=====

Stratus3D

An Elixir assertion library that utilizes the [Erlang library teal](https://github.com/Stratus3D/teal).

The name was inspired by the color assigned to Elixir in the GitHub web interface. The color appears to be very close to <a href="http://en.wikipedia.org/wiki/Lilac_(color)#French_lilac">French Lilac</a>.

##Installation
To use Lilac assertions in your own tests simply add Lilac as a test dependency in `mix.exs`:

    defp deps do
      [{:lilac, "~> 0.0.1"}]
    end

Or using the GitHub repo:

    defp deps do
      [{:lilac, git: "https://github.com/Stratus3D/lilac.git", only: [:dev, :test]}]
    end

##Usage

## Known Issues
No known issues. If you see something that could be improved feel free to open an issue on GitHub ([https://github.com/Stratus3D/lilac/issues](https://github.com/Stratus3D/lilac/issues))

## Contributing
Feel free to create an issue or pull request if you find a bug or if you have additional assertions that you would like to be included in this library.
