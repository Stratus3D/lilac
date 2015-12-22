defmodule Lilac.Module do
  import Lilac

  delegate_assertions [
    {is_module(atom), :not_a_module},
    {exports(module, function), :function_not_exported},
    {exports_with_arity(module, function, arity), :function_not_exported},
    ], to: :teal_modules

end
