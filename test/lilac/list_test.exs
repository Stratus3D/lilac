defmodule Lilac.ListTest do
  use ExUnit.Case

  test "All functions in :teal_behaviours are available" do
    lilac_exports = length(Lilac.List.module_info :exports)
    teal_exports = length(:teal_lists.module_info :exports)
    # Lilac.List module has two extra functions
    assert lilac_exports == teal_exports + 2
  end
end
