defmodule ElixirCloudRun.Application do
  use Application
  require Logger

  def start(_type, _args) do

    children = [
      {Plug.Cowboy, scheme: :http, plug: ElixirCloudRun.Controllers.Ping, options: [port: app_port()]}
    ]

    opts = [strategy: :one_for_one, name: ElixirCloudRun.Supervisor]

    Logger.info("Starting application on port #{app_port()}...")

    Supervisor.start_link(children, opts)
  end

  defp app_port, do: Application.get_env(:elixir_cloud_run, :port)
end
