defmodule BST.Main do
  alias BST.NODES
  alias BST.TreeDef

  def main(_args) do
    tree = NODES.insert_nodes(TreeDef.get_tree_nodes())
    IO.puts(NODES.print_tree(tree, "", ""))
    IO.inspect(NODES.in_order(tree))
    IO.inspect(NODES.pre_order(tree))
    IO.inspect(NODES.post_order(tree))
  end
end
