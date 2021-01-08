defmodule Main do
  @moduledoc """

  ## Examples

      iex> BST.insert(nil, 2)
      %{data: 2, left: nil, right: nil}

      iex> BST.insert(nil, 2) + 3 + 5;
      %{
      data: 2,
      left: nil,
      right: %{data: 3, left: nil, right: %{data: 5, left: nil, right: nil}}
      }
  """

  require BST
  use Operations
  require Config

  @doc """
  Creates traversal functions for a tree defined in the TreeDef module.
   ## Examples

      iex> Main.in_order()
      iex> Main.pre_order()
      iex> Main.post_order()
  """
  Operations.tree_traversal()

  @doc """
  Creates tree printing function.
  ## Examples

      iex> Main.print_tree()
  """
  Operations.tree_printing()

end
