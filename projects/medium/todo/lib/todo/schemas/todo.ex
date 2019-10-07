defmodule Todo.Schemas.Todo do
  use Ecto.Schema
  import Ecto.Changeset

  @derive {Jason.Encoder, except: [:__meta__]}
  schema "todos" do
    field :complete, :boolean, default: false
    field :description, :string

    timestamps()
  end

  @doc false
  def changeset(todo, attrs) do
    todo
    |> cast(attrs, [:description, :complete])
    |> validate_required([:description, :complete])
  end
end
