defmodule BST.Main do
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

      # iex> tree = BST.insert(BST.insert(nil, 2), 3)
      # iex> IO.inspect(tree)
      # %{data: 2, left: nil, right: %{data: 3, left: nil, right: nil}}
  """
  use Operations

  @doc """
  Creates traversal functions for a tree defined in the TreeDef module.
   ## Examples

      iex> BST.Main.in_order()
      iex> BST.Main.pre_order()
      iex> BST.Main.post_order()
  """
  Operations.tree_traversal()

  @doc """
  Creates tree printing function.
  ## Examples

      iex> BST.Main.print_tree()
  """
  Operations.tree_printing()

  def main(_args) do
    IO.inspect(in_order())
    IO.inspect(pre_order())
    IO.inspect(post_order())
    # print_tree()
  end
end
