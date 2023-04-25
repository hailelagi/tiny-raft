defmodule TinyRaftTest do
  use ExUnit.Case
  doctest TinyRaft

  test "greets the world" do
    assert TinyRaft.hello() == :world
  end
end
