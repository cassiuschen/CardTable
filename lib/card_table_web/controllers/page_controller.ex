defmodule CardTableWeb.PageController do
  use CardTableWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
