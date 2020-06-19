defmodule HopscotchdWeb.PageController do
  use HopscotchdWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
