defmodule TodoWeb.PageController do
  use TodoWeb, :controller
  
  alias Todo.Repo.Todos

  def index(conn, _params) do
    Todos.list()
    render(conn, "index.html")
  end
end
