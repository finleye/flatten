defmodule FlattenTest do
  use ExUnit.Case
  doctest Flatten

  test "empty list" do
    assert Flatten.flatten([]) == []
  end

  test "list of atoms" do
    assert Flatten.flatten([:a, :b, :c]) == [:a, :b, :c]
  end

  test "list of mixed data types" do
    assert Flatten.flatten([:a, 1, :c]) == [:a, 1, :c]
  end

  test "flattens a list of an empty list" do
    assert Flatten.flatten([[]]) == []
  end

  test "flattens a list within a list" do
    assert Flatten.flatten([1, 2, [3]]) == [1, 2, 3]
  end

  test "flattens a list within a list, when the head is a list" do
    assert Flatten.flatten([[1], 2, 3]) == [1, 2, 3]
  end

  test "flattens a list within a list, when the head is a list in a list" do
    assert Flatten.flatten([[[1]], 2, 3]) == [1, 2, 3]
  end

  test "flattens a list within a list, when the tail is a multipart list" do
    assert Flatten.flatten([1, [2, 3]]) == [1, 2, 3]
  end
end
