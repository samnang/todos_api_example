defmodule TodosApiExample.Factory do
  use ExMachina.Ecto, repo: TodosApiExample.Repo

  def todo_factory do
    %TodosApiExample.Todo{
      title: "Something I need to do",
      description: "List of steps I need to complete"
    }
  end
end
