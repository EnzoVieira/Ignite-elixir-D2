defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  test "cound odd numbers" do
    list = ["1", "3", "6", "43", "banana", "6", "abc"]

    response = ListFilter.call(list)

    expected_response = 3

    assert response == expected_response
  end
end
