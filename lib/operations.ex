defmodule Operations do
  import BST
  import TreeDef

  defmacro tree_traversal() do
    quote do
      def in_order do
        unquote(BST.in_order(insert_nodes(TreeDef.get_tree_nodes())))
      end

      def pre_order do
        unquote(BST.pre_order(insert_nodes(TreeDef.get_tree_nodes())))
      end

      def post_order do
        unquote(BST.post_order(insert_nodes(TreeDef.get_tree_nodes())))
      end
    end
  end

  defmacro tree_printing() do
    quote do
      def print_tree do
        IO.puts("\n" <> unquote(BST.print_tree(insert_nodes(TreeDef.get_tree_nodes()), "", "")))
      end
    end
  end

  defmacro __using__(_) do
    quote do
      import Kernel, except: [{:+, 2}]

      defmacro tree + data do
        quote bind_quoted: [
                tree: tree,
                data: data
              ] do
          BST.insert(tree, data)
        end
      end

    end
  end
end
