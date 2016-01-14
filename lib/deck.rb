require 'card'

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    make_deck
  end

  def make_deck
    (1..13).each do |value|
      (1..4).each do |suit|
        @cards << Card.new(value, suit)
      end
    end
    @cards.shuffle!
  end
end
