defmodule ExBandNamer.Names do

  @doc """
  Double Prefix 2% chance to have Double Prefix
  Prefix        45% chance to have Prefix + Infix           :type => :prefix
  Infix         10% chance to have Prefix + Infix + Suffix  :type => :all
  Suffix        45% chance to have Infix + Suffix           :type => :suffix

  """

  # rare chance to have double prefixes
  def double_prefix_names do
    [
      "10",
      "100",
      "20",
      "24",
      "3",
      "64",
      "7",
    ]
  end

  def prefix_names do
    [
      "A", # "an"
      "Story",
      "Snoring",
      "Hour",
      "Megs of",
      "Umpa",
      "A Corporation of",
      "Adult",
      "Achilles",
      "Acid",
      "Act Out Your",
      "Active",
      "Adjustable",
      "Adorn",
      "Adventure",
      "Aerosol",
      "Aesthetic",
      "Aging",
      "Aggravated",
    ]
  end

  # listed singular
  # if double_prefix then plural
  #   else randomly plural
  def infix_names do
    [
      "Bug",
      "Cheese",
      "Agent",
      "Flow",
      "Friction",
      "Fossils",
      "Gutter",
      "Chalupa",
      "Adam",
      "Elephant",
      "Dwarf",
      "Overchurro",
      "Ryan",
      "Scentric",
      "Chin",
      "Farm of Cyst",
      "Million Doll Hair",
      "Penny To",
      "Abba Cuss",
      "Ruin",
      "Age",
      "Scorn",
      "Rage",
      "Anger",
      "Radio",
      "Addict",
      "Waistband",
      "Wristband",
    ]
  end

  def suffix_names do
    [
      "Satan",
      "Supervision",
      "Capitalism",
      "Jesus",
      "Demon",
      "Gloss",
      "The Pope",
    ]
  end

end
