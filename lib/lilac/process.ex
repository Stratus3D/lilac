defmodule Lilac.Process do
  import Lilac

  defdelegate [get_state(process)], to: :teal_processes

  delegate_assertions [
    {is_registered(process), :not_registered},
    {is_registered_with_name(process, name), :wrong_name},
    {receive_message(message, timeout), :message_not_received}
    ], to: :teal_processes
end
