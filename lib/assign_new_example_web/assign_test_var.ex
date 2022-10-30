defmodule AssignNewExampleWeb.AssignTestVar do
  def init(_) do
    []
  end

  def call(conn, _params) do
    "Im inside the plug now" |> IO.puts()

    conn
    |> Plug.Conn.assign(:test_var, "Im from the Plug")
  end
end
