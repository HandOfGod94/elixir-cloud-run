defmodule ElixirCloudRun.Controllers.Ping do
  use Plug.Router

  require Logger

  plug(:match)
  plug(:dispatch)

  get "/ping" do
    Logger.info("Ping called")

    conn
    |> put_resp_content_type("application/json")
    |> send_resp(:ok, Jason.encode!(%{success: true}))
  end

  match _ do
    Logger.info("No matching route")

    conn
    |> put_resp_content_type("application/json")
    |> send_resp(:not_found, Jason.encode!(%{success: false}))
  end
end
