defmodule ElixirSimpleApiWeb.DefaultController do
  use ElixirSimpleApiWeb, :controller

  def index(conn, _params) do
    text conn, "Minha primeira API em Elixir está rodando - #{Mix.env()}"
  end
end
