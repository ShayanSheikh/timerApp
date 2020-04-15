defmodule TimerAppWeb.PageController do
  use TimerAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
