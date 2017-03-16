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

  test "Get /personal_greeting shows personal greeting" do

    # Given (Setup)
    navigate_to(@home_url <> "personal_greeting")
    take_screenshot()
    text_field = find_element(:css, "#name-field")
    submit_button = find_element(:css, "button")


    # When (Action)
    fill_field(text_field, "Jon")
    click(submit_button)

    # Then (Result) Note: use of shorthand syntax to get and click element
    assert inner_text({:css, "#greeter"}) == "Hello Jon!"

  end
end
