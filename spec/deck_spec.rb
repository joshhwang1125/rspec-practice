require 'rspec'
require 'deck.rb'

describe Deck do
  subject(:deck) {Deck.new}
  let(:cards) {subject.cards}

  describe "#initialize" do
    it "creates a deck with 52 unique cards" do
      expect(cards.uniq.length).to eq(52)
    end

    it "expects each element to be a card" do
      expect(cards.each{ |card| card.is_a?(Card)})
    end
  end

  # describe "#card_count" do
  #   it "counts the current number of cards in the deck"
  # end
end
