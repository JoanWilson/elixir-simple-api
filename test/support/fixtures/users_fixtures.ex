defmodule ElixirSimpleApi.UsersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ElixirSimpleApi.Users` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        email: "some email",
        hash_password: "some hash_password"
      })
      |> ElixirSimpleApi.Users.create_user()

    user
  end
end
