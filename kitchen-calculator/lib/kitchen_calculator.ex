defmodule KitchenCalculator do
  def get_volume({unit, volume}) do
      volume
  end
    # Please implement the get_volume/1 function

  def to_milliliter({:cup, num}), do: {:milliliter, num * 240}
  def to_milliliter({:fluid_ounce, num}), do: {:milliliter, num * 30}
  def to_milliliter({:teaspoon, num}), do: {:milliliter, num * 5}
  def to_milliliter({:tablespoon, num}), do: {:milliliter, num * 15}
  def to_milliliter(volume_pair), do: volume_pair
    # Please implement the to_milliliter/1 functions

  def from_milliliter({_, num}, :cup), do: {:cup, num / 240}
  def from_milliliter({_, num}, :fluid_ounce), do: {:fluid_ounce, num / 30}
  def from_milliliter({_, num}, :teaspoon), do: {:teaspoon, num / 5}
  def from_milliliter({_, num}, :tablespoon), do: {:tablespoon, num / 15}
  def from_milliliter(volume_pair, :milliliter), do: volume_pair
    # Please implement the from_milliliter/2 functions

  def convert(volume_pair, unit) do
    volume_pair
    |> to_milliliter()
    |> from_milliliter(unit)

  end
    # Please implement the convert/2 function

end
