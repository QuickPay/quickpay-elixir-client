use Mix.Config

config :quickpay_elixir_client, fo: "bar"

import_config "#{Mix.env()}.exs"