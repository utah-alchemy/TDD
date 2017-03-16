defmodule TDD.PageControllerTest do
  use TDD.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end

  test "GET /personal_greeting", %{conn: conn} do
    conn = get conn, "/personal_greeting/Name"
    assert html_response(conn, 200)
  end
end
