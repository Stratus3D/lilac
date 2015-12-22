defmodule Lilac.TypeTest do
  use ExUnit.Case

  test "All functions in :teal_behaviours are available" do
    lilac_exports = length(Lilac.Type.module_info :exports) - 1 # Elixir modules have an extra function
    teal_exports = length(:teal_types.module_info :exports)
    assert lilac_exports == teal_exports + 2 # We export two more functions from Lilac.Type
  end
end
