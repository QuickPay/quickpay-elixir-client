defmodule Quickpay.Elixir.ClientTest do
  use ExUnit.Case
  doctest Quickpay.Elixir.Client

  test "get activity with options" do
    result = Quickpay.Elixir.Client.get("activity", options())
    assert result.status_code == 400
  end

  test "get activity without options" do
    result = Quickpay.Elixir.Client.get("activity")
    assert result.status_code == 400
  end


  test "get activity as raw" do
    result = Quickpay.Elixir.Client.get("activity", options())
    IO.inspect result
    assert result.status_code == 400
  end

  defp options do
    [
      headers: [{"Content-Type", "application/json"}],
      body: [fo: "fo", bar: "bar"],
      raw: false
    ]
  end
end
