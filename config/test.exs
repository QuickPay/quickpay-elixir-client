use Mix.Config


config :quickpay_elixir_client,
  base_uri: "https://api.quickpay.net",
  api_key: "4b6449650c65adc108626e1a2406f25a414e6ea8d6cfcfd43dee62e91095bd26",
  quickpay_api: Quickpay.Api.HttpClient
  # quickpay_api: Quickpay.Api.InMemory

#import_config "#{Mix.env()}.exs"