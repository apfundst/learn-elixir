defmodule TodoWeb.TodoController do
    use TodoWeb, :controller
    
    alias Todo.Repo.Todos
  
    def index(conn, _params) do
      todos = Todos.list()
      json(conn, todos)
    end

    def create(conn, params) do
        {_status, todo} = Todos.create_todo(params)
        json(conn, todo)
    end

    def show(conn, params) do
       todo = Todos.show(params["id"])
       json(conn, todo)
    end

    def update(conn, params) do
       {_status, todo} = Todos.update(params["id"], params)
       json(conn, todo)
    end

    def delete(conn, params) do
        {_status, _todo} = Todos.delete_todo(params["id"])
        json(conn, "OK")
     end
  end
  