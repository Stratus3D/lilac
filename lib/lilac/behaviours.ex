defmodule Lilac.Behaviours do
  # Delegate everything to :teal_behaviours module
  defdelegate [has_callback(module, name, arity),
    assert_has_callback(module, name, arity), assert_has_callback(module, name, arity, msg),
    is_behaviour(module), assert_is_behaviour(module), assert_is_behaviour(module, msg),
    implements_behaviour(module, behaviour), assert_implements_behaviour(module, behavior),
    assert_implements_behaviour(module, behaviour, msg)], to: :teal_behaviours
end
