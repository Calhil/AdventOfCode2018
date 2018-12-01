defmodule AOC2018.Day1 do
  def parseFile(fileName) do
    fileName
    |> File.stream!()
    |> Stream.map(&String.trim/1)
    |> Stream.map(&String.to_integer/1)
  end

  def part1(stream) do
    stream
    |> Enum.sum()
  end

  def part2(stream) do
    # Using map
    # stream
    # |> Stream.cycle()
    # |> Enum.reduce_while(
    #   {0, %{}},
    #   fn x, {sum, acc} ->
    #     sum = sum + x

    #     if Map.has_key?(acc, sum) do
    #       {:halt, sum}
    #     else
    #       {:cont, {sum, Map.put(acc, sum, 1)}}
    #     end
    #   end
    # )

    stream
    |> Stream.cycle()
    |> Enum.reduce_while(
      {0, MapSet.new()},
      fn x, {sum, acc} ->
        sum = sum + x

        if MapSet.member?(acc, sum),
          do: {:halt, sum},
          else: {:cont, {sum, MapSet.put(acc, sum)}}
      end
    )
  end
end
