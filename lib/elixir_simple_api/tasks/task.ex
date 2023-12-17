defmodule ElixirSimpleApi.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "tasks" do
    field :description, :string
    field :title, :string
    field :is_completed, :boolean, default: false
    field :user_id, :binary_id

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:title, :description, :is_completed])
    |> validate_required([:title, :description, :is_completed])
  end
end
