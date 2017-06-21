defmodule ExBandNamer do
  @moduledoc """
  ExBandNamer is a lib for generating random names that look like band names.
  Use whenever you need to generate human readable random names.
  Think docker container names, or permalinks, except that you should not rely on zero collisions.

  ExBandNamer can also be used to hash some value to produce it's band name.
  
  """

  @doc """
  Returns a randomly generated Band Name.

  ## Examples

      iex> ExBandNamer.random
      "Dwarf Satan"

      iex> ExBandNamer.random
      "Anger Supervision"

  """
  def random do
    name = if (:rand.uniform(50) == 1), do: [ Enum.random(ExBandNamer.Names.double_prefix_names) ], else: []

    Enum.join(
      List.flatten(
        [ name |
          case [{ :type, :rand.uniform(100) }] do
            [type: type ] when type < 45 -> get_random( :prefix )
            [type: type ] when type < 90 -> get_random( :suffix )
            [type: _ ] -> get_random( :all )
          end
        ]
      ), " "
    )
  end

  defp get_random(:prefix) do
    [ Enum.random(ExBandNamer.Names.prefix_names), Enum.random(ExBandNamer.Names.infix_names) ]
  end

  defp get_random(:all) do
    [ Enum.random(ExBandNamer.Names.prefix_names), Enum.random(ExBandNamer.Names.infix_names), Enum.random(ExBandNamer.Names.suffix_names) ]
  end

  defp get_random(:suffix) do
    [ Enum.random(ExBandNamer.Names.infix_names), Enum.random(ExBandNamer.Names.suffix_names) ]
  end

end
