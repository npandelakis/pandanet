defmodule PandanetWeb.ClientController do
  use PandanetWeb, :controller
  require Logger

  def index(conn, _params) do
    Logger.error("This is an error log")

    list =
      IO.inspect(
        System.cmd("ls", [])
        |> Tuple.to_list()
        |> hd()
        |> String.split("\n")
      )

    conn
    |> assign(:list, list)
    |> render(:index)

    # render(conn, "index.html")
  end
end
