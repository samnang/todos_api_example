defmodule TodosApiExample.PageController do
  use TodosApiExample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
