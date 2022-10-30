defmodule AssignNewExampleWeb.PageLive do
  use AssignNewExampleWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok,
      assign_new(socket, :test_var, fn ->
        "Im running this assign_new. Connected?=#{connected?(socket)}"
        |> IO.puts()

        "Im from PageLive"
      end)
    }
  end

  def render(assigns) do
    if assigns[:test_var] do
      IO.puts("✅ I already have test_var")
    else
      IO.puts("❌ I dont have test_var")
    end

    ~H"""
    <div>
      Here. Test var is: <%= @test_var %>
    </div>
    """
  end
end
