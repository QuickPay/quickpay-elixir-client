defmodule Quickpay.Api.HttpClient do
  @behaviour Quickpay.Api

  def request(method, url, body \\ "", headers \\ [], options \\ []) do
    HTTPoison.start
    {:ok, result} =  HTTPoison.request(method, url, body, headers, options)
    response(result, options)
  end

  defp response(result, options) do

    if false do
      [
        status: result.status_code,
        body: result.body,
        headers: result.headest
      ]
    else
      # TODO: wrap HTTPOison.result in to quickpay format
      result
    end
  end
end
