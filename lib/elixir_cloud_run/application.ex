defmodule ElixirCloudRun.Application do
  use Application
  require Logger

  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: ElixirCloudRun.Controllers.Ping, options: [port: 4001]}
    ]

    opts = [strategy: :one_for_one, name: ElixirCloudRun.Supervisor]

    Logger.info("Starting application...")

    Supervisor.start_link(children, opts)
  end
end
