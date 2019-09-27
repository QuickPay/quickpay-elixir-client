defmodule QuickpayElixirClient.MixProject do
  use Mix.Project

  def project do
    [
      app: :quickpay_elixir_client,
      version: "0.1.0",
      elixir: "~> 1.9",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      name: "quickpay_elixir_client",
      source_url: "https://github.com/maxgronlund/quickpay-elixir-client",
      description: desctiption(),
      package: package()
    ]
  end

  defp desctiption do
    """
      The quickpay-elixir-client hex package is a official client for QuickPay API. The Quickpay API enables you to accept payments in a secure and reliable manner.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Max Groenlund"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/maxgroenlund/quickpay_elixir_client"}
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.5"},
      {:json, "~> 1.2"},
      {:ex_doc, "~> 0.18", only: :dev}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
