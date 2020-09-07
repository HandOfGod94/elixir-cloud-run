import Config

config :elixir_cloud_run,
  port: System.fetch_env!("PORT") |> String.to_integer()
