defmodule BST.NODES do

  def insert(nil, data), do: %{data: data, left: nil, right: nil}

  def insert(tree, value) when tree.data == value, do: tree

  def insert(tree, value) when value < tree.data do
    %{tree | left: insert(tree.left, value)}
  end

  def insert(tree, value) when value > tree.data do
    %{tree | right: insert(tree.right, value)}
  end

  @doc """
  Creates a new tree and inserts nodes from a list.
  """
  def insert_nodes(nodes) do
    Enum.reduce(nodes, nil, fn(x, acc) -> insert(acc, x) end)
  end

  def in_order(nil), do: []

  def in_order(%{data: data, left: left, right: right}) do
    in_order(left) ++ List.wrap(data) ++ in_order(right)
  end

  def pre_order(nil), do: []

  def pre_order(%{data: data, left: left, right: right}) do
    List.wrap(data) ++ pre_order(left) ++ pre_order(right)
  end

  def post_order(nil), do: []

  def post_order(%{data: data, left: left, right: right}) do
    post_order(left) ++ post_order(right) ++ List.wrap(data)
  end

  def print_tree(nil, _prefix, _children_prefix) do
    ""
  end

  def print_tree(%{data: data, left: left, right: nil}, prefix, children_prefix) do
    output = print_tree(left, children_prefix <> "└── ", children_prefix <> "    ")
    "#{prefix}#{data}\n" <> output
  end

  def print_tree(%{data: data, left: nil, right: right}, prefix, children_prefix) do
    output = print_tree(right, children_prefix <> "├── ", children_prefix <> "    ")
    "#{prefix}#{data}\n" <> output
  end

  def print_tree(%{data: data, left: left, right: right}, prefix, children_prefix) do
    output_right = print_tree(right, children_prefix <> "├── ", children_prefix <> "│   ")
    output_left = print_tree(left, children_prefix <> "└── ", children_prefix <> "    ")
    "#{prefix}#{data}\n" <> output_right <> output_left
  end

  def tree_search(nil, _value), do: nil

  def tree_search(%{data: value, left: _left, right: _right} = tree, value), do: tree

  def tree_search(%{data: data, left: left, right: right}, value) do
    if value <= data do
      tree_search(left, value)
    else
      tree_search(right, value)
    end
  end

end
