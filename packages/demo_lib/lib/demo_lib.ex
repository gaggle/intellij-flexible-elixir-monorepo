defmodule DemoLib do
  @moduledoc """
  Shared library used by `demo_web` via a workspace `path` dependency.
  """

  @doc """
  Returns an atom placeholder for tests and simple call sites.
  """
  def hello, do: :world

  @doc """
  Human-readable string for display in the Phoenix demo app.
  """
  def banner do
    "From DemoLib: hello is #{inspect(hello())}"
  end
end
