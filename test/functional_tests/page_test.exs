defmodule TDD.PageTest do
  use ExUnit.Case
  use Hound.Helpers

  @moduletag :end2end
  @home_url "http://localhost:4000/"
  hound_session()

  test "user loads the home page and sees the heading `Welcome!`" do
    navigate_to(@home_url)

    heading = find_element(:css, "h1")

    assert inner_text(heading) == "Welcome!"
  end

  test "Get /personal_greeting/<name> shows personal greeting" do

    # Given (Setup)
    navigate_to(@home_url <> "personal_greeting/Jon")
    # take_screenshot()

    # When (Action)
    greeting_field = find_element(:css, "#greeter")

    # Then (Result)
    assert inner_text(greeting_field) == "Hello Jon!"

  end
end
