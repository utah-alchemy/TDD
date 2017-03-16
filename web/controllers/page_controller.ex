defmodule TDD.PageController do
  use TDD.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def greet(conn, %{"person" => person}) do
    render conn, "greet.html", person: person
  end
end
