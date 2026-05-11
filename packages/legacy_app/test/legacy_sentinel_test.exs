defmodule LegacySentinelTest do
  @moduledoc false
  use ExUnit.Case

  test "ping/0" do
    assert LegacySentinel.ping() == :pong
  end
end
