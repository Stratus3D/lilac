defmodule Lilac.Number do
  import Lilac

  delegate_assertions [
    {close_to(received, expected, delta), :not_in_range}
    ], to: :teal_numbers
end
