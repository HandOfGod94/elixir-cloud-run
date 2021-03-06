defmodule ElixirCloudRun.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_cloud_run,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {ElixirCloudRun.Application, []}
    ]
  end

  defp deps do
    [
      {:plug_cowboy, "~> 2.0"},
      {:jason, "~> 1.2"}
    ]
  end
end
