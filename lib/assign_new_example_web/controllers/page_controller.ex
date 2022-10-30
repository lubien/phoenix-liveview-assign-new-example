defmodule AssignNewExampleWeb.PageController do
  use AssignNewExampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
