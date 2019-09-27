defmodule Quickpay.Api.InMemory do
  @behaviour Quickpay.Api

  def get(_path, _options \\ %{}) do
    "fo"
  end

end