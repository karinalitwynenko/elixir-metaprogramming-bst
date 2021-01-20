defmodule BST.Main do
  import BST.Operations
  alias BST.Operations

  Operations.tree_traversal()
  Operations.tree_printing()

  def main(_args) do
    print_tree()
    IO.inspect(in_order())
    IO.inspect(pre_order())
    IO.inspect(post_order())
  end
end
