defmodule FlexMonorepo.MixProject do
  @moduledoc false
  use Mix.Project

  def project do
    [
      workspace: [type: :workspace],
      app: :flex_monorepo_workspace,
      version: "0.1.0",
      elixir: "~> 1.18",
      elixirc_paths: [],
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      lockfile: "workspace.lock"
    ]
  end

  def application, do: [extra_applications: [:logger]]

  defp deps do
    [{:workspace, "~> 0.3"}]
  end
end
