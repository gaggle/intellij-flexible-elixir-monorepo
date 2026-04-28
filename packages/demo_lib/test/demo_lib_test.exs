defmodule DemoLibTest do
  @moduledoc false
  use ExUnit.Case
  doctest DemoLib

  test "hello/0" do
    assert DemoLib.hello() == :world
  end

  test "banner/0 includes hello" do
    assert DemoLib.banner() =~ ":world"
  end
end
