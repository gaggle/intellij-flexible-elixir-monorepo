defmodule DemoLibTest do
  @moduledoc false
  use ExUnit.Case
  doctest DemoLib

  defmodule InlineModule do
    @moduledoc false
    use Foo,
      ham: "spam",
      egg: "spam"
  end

  test "hello/0" do
    assert DemoLib.hello() == :world
  end

  test "banner/0 includes hello" do
    assert DemoLib.banner() =~ ":world"
  end
end
