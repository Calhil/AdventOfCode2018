defmodule Day1Test do
  use ExUnit.Case

  @inputFile "resources/day1.txt"

  describe "Part 1" do
    test "Day1 part1" do
      output =
        @inputFile
        |> AOC2018.Day1.parseFile()
        |> AOC2018.Day1.part1()

      IO.inspect("Day1 part1 = #{output}")

      assert output == 561
    end

    test "givenSampleInput_thenReturnCorrectValue" do
      input = [1, 2, 3, 4]

      assert 10 ==
               input
               |> AOC2018.Day1.part1()
    end
  end

  describe "Part 2" do
    test "givenSampleInput_thenReturnCorrectValue" do
      input = [1, 2, -1, 1, 2, -4]

      assert 3 ==
               input
               |> AOC2018.Day1.part2()
    end

    test "given_1_neg1_thenReturn0" do
      input = [1, -1]

      assert 0 == input |> AOC2018.Day1.part2()
    end

    test "given_1_1_neg2_thenReturnNeg1" do
      input = [1, 1, -2]

      assert -1 == input |> AOC2018.Day1.part2()
    end

    test "Day1 Part2" do
      assert 563 ==
               @inputFile
               |> AOC2018.Day1.parseFile()
               |> AOC2018.Day1.part2()
    end
  end
end
