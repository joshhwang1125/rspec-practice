class Card
  attr_reader :value, :suit

  SUITS = {1 => "♠",
           2 => "♥",
           3 => "♣",
           4 => "♦"}

  def initialize(value, suit)
    @value = value
    @suit = SUITS[suit]
  end
end
