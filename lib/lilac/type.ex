defmodule Lilac.Type do
  import Lilac

  delegate_assertions [
    {not_of_type(term, type), :not_of_type},
    {not_record(term), :is_a_record},
    {could_be_record(record), :not_record}
    ], to: :teal_types
end
