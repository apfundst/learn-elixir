defmodule Todo.Repo.Todos do
  alias Todo.Repo
  alias Todo.Schemas.Todo

  def list() do
    Repo.all(Todo)
  end

  def create_todo(attrs \\ %{}) do
    %Todo{}
    |> Todo.changeset(attrs)
    |> Repo.insert()
  end

  def update_todo(%Todo{} = todo, attrs) do
    todo
    |> Todo.changeset(attrs)
    |> Repo.update()
  end

  def update(id, attrs) do
    todo = Repo.get(Todo, id)
    update_todo(todo, attrs)
  end

  def delete_todo(id) do
    todo = Repo.get(Todo, id)
    Repo.delete(todo)
  end

  def show(id) do
    Repo.get(Todo, id)
  end
end
