defmodule TDD.PageController do
  use TDD.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
