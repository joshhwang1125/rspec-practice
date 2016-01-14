require 'card'
require 'deck'

class Hand
  attr_reader :cards

  def initialize(deck, cards = [])
    @deck = deck
    @cards = cards
    new_hand if @cards.empty?
  end

  def new_hand
    5.times {@cards << @deck.cards.pop}
  end

  def analyze_hand

  end

  def is_one_pair?

  end

  def straight?
  end

  def flush?
    first_suit = @cards.first.suit
    @cards.all?{|card| card.suit == first_suit}
  end



end
