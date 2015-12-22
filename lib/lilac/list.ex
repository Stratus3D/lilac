defmodule Lilac.List do
  import Lilac

  delegate_assertions [
        {is_flat(list), :contains_sublists},
        {same_members(list1, list2), :not_same_members},
        {includes_members(list, members), :members_missing},
        {include(list, item), :member_missing}
    ], to: :teal_lists
end
