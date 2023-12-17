defmodule ElixirSimpleApi.Repo do
  use Ecto.Repo,
    otp_app: :elixir_simple_api,
    adapter: Ecto.Adapters.MyXQL
end
