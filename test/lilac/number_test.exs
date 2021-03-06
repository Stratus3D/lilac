defmodule Lilac.NumberTest do
  use ExUnit.Case

  test "All functions in :teal_behaviours are available" do
    lilac_exports = length(Lilac.Number.module_info :exports) - 1 # Elixir modules have an extra function
    teal_exports = length(:teal_numbers.module_info :exports)
    assert lilac_exports == teal_exports
  end
end
