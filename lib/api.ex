defmodule Quickpay.Api do

  @callback get(path :: String.t, options :: String.t) :: String.t

end
