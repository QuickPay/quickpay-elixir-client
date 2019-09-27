defmodule Quickpay.Elixir.Client do

  @quickpay_api Application.get_env(:quickpay_elixir_client, :quickpay_api)
  @moduledoc """
  Documentation for QuickpayElixirClient.
  """


  # @doc """
  # get request.

  # ## Examples

  #     iex> Quickpay.Elixir.Client.get("example.com", [])
  #     %HTTPoison.Response{}

  # """
  def get(path, options \\ []) do
    request(:get, path, options)
  end

  defp headers(nil_or_headers) do
    if nil_or_headers do
      default_headers() ++ nil_or_headers
    else
      default_headers()
    end
  end

  defp default_headers do
    [
      {"Authorization", "Basic #{password()}"},
      {"Accept-Version", "v10"},
      {"User-Agent", "quickpay-elixir-client, v2.0.0"}
    ]
  end

  defp default_options do
    [
      {"read_timeout", "60"},
      {"write_timeout", "60"},
      {"connect_timeout", "60"}
    ]
  end

  defp body(data, hdrs) do
    if data do
      if Enum.member?(hdrs, {"Content-Type", "application/json"}) && is_list(data) do
        case JSON.encode(data) do
          {:ok, data} -> data
          {:error, _reason} -> ""
          _ -> ""
        end
      else
        data
      end
    else
      ""
    end
  end

  defp password do
    URI.encode("4b6449650c65adc108626e1a2406f25a414e6ea8d6cfcfd43dee62e91095bd26")
  end

  defp request(method, path, options \\ []) do

    hdrs = Keyword.get(options, :headers)
    data = Keyword.get(options, :body)

    @quickpay_api.request(
      method,
      "https://api.quickpay.net/#{path}",
      body(data, hdrs),
      headers(hdrs),
      default_options()
    )
  end
end
