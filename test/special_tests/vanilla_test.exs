defmodule VanillaTest do
  use TDD.ConnCase, async: true
  import TDD.Vanilla
  doctest TDD.Vanilla

  test "squares a number" do
    assert square(2) == 4
  end
end
