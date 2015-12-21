defmodule Lilac do
  defmacro delegate_assertions(functions, to: module) do
    funs = Enum.map(functions, fn(options) ->
      generate_assert_functions(options)
    end)

    delegate_funs = Enum.map(functions, fn({function, _}) ->
      function
    end)

    quote do
      unquote(funs)
      defdelegate unquote(delegate_funs), to: unquote(module)
    end
  end

  defp generate_assert_functions({{name, _opts, args}, default}) do
    new_name = String.to_atom("assert_" <> Atom.to_string(name))
    msg_arg = {:msg, [], nil}

    assert_with_msg_args = args ++ [msg_arg]

    quote do
      def unquote(new_name)(unquote_splicing(args)) do
        :teal.assert(true, unquote(name)(unquote_splicing(args)), unquote(default))
      end

      def unquote(new_name)(unquote_splicing(assert_with_msg_args)) do
        :teal.assert(true, unquote(name)(unquote_splicing(args)), unquote(msg_arg))
      end
    end
  end
end
