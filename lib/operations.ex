defmodule BST.Operations do
  import BST.NODES
  alias BST.NODES
  alias BST.TreeDef

  defmacro tree_traversal() do
    quote do
      def in_order do
        unquote(NODES.in_order(insert_nodes(TreeDef.get_tree_nodes())))
      end

      def pre_order do
        unquote(NODES.pre_order(insert_nodes(TreeDef.get_tree_nodes())))
      end

      def post_order do
        unquote(NODES.post_order(insert_nodes(TreeDef.get_tree_nodes())))
      end
    end
  end

  defmacro tree_printing() do
    quote do
      def print_tree do
        IO.puts("\n" <> unquote(NODES.print_tree(insert_nodes(TreeDef.get_tree_nodes()), "", "")))
      end
    end
  end
end
