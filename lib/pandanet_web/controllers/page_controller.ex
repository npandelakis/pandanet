defmodule PandanetWeb.PageController do
  use PandanetWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
