defmodule TodosApiExample.Todo do
  use TodosApiExample.Web, :model

  schema "todos" do
    field :title
    field :description

    timestamps()
  end
end
