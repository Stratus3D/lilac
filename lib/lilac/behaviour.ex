defmodule Lilac.Behaviour do
  import Lilac

  delegate_assertions [
    {has_callback(module, name, arity), :no_callback},
    {is_behaviour(module), :not_behaviour},
    {implements_behaviour(module, behaviour), :behaviour_not_implemented},
    ], to: :teal_behaviours
end
