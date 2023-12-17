defmodule ElixirSimpleApiWeb.Router do
  use ElixirSimpleApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ElixirSimpleApiWeb do
    pipe_through :api
    get "/", DefaultController, :index
  end
end
