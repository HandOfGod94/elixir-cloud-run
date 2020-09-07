# ElixirCloudRun

## Notes
It turns out you can't provide any other registry for fetching images in GCP cloud run (fully managed).  
One needs to have `gcr` enabled and image pushed to it.

## Overview

This project was to test out how one can leverage elixir in GCP, thorugh cloud run.
I wanted to run everything for free, but it turned out GCP cloud run doesn't support private docker registry.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `elixir_cloud_run` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:elixir_cloud_run, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/elixir_cloud_run](https://hexdocs.pm/elixir_cloud_run).

