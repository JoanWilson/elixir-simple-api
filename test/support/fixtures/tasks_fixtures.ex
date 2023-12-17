defmodule ElixirSimpleApi.TasksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ElixirSimpleApi.Tasks` context.
  """

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{
        description: "some description",
        is_completed: true,
        title: "some title"
      })
      |> ElixirSimpleApi.Tasks.create_task()

    task
  end
end
