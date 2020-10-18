defmodule FizzbuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, a converted list is returned" do
      expected_response = {:ok, [:fizzbuzz, 1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz]}

      assert Fizzbuzz.build("numbers.txt") == expected_response
    end

    test "when an invalid file is provided, an error is returned" do
      expected_response = {:error, "Error reading file: enoent"}

      assert Fizzbuzz.build("invalid.txt") == expected_response
    end
  end
end
