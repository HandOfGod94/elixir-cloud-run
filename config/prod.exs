import Config

config :elixir_cloud_run,
  port: System.get_env("PORT", "8080") |> String.to_integer()
