defmodule ElixirCloudRunTest do
  use ExUnit.Case
  doctest ElixirCloudRun

  test "greets the world" do
    assert ElixirCloudRun.hello() == :world
  end
end
