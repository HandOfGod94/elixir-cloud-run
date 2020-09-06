defmodule ElixirCloudRun.Controllers.PingTest do
  use ExUnit.Case, async: true
  use Plug.Test

  alias ElixirCloudRun.Controllers.Ping

  test "GET /ping" do
    conn =
      :get
      |> conn("/ping")
      |> Ping.call([])

    assert conn.status == 200
    assert Jason.decode!(conn.resp_body) == %{"success" => true}
  end
end
