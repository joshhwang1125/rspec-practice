require 'rspec'
require 'deck.rb'
require 'hand.rb'

describe Hand do
  let(:deck) { Deck.new }
  subject(:hand) {Hand.new(deck)}
  let(:cards) {subject.cards}


  describe "#initialize" do
    it "expects the hand size to begin with 5" do
      expect(cards.length).to eq(5)
    end
  end

  describe "#analyze_hand" do
    let(:card1) {Card.new(2, 3)}
    let(:card2) {Card.new(2, 2)}
    let(:card3) {Card.new(3, 3)}
    let(:card4) {Card.new(4, 4)}
    let(:card5) {Card.new(5, 3)}
    let(:card6) {Card.new(6, 3)}
    let(:card7) {Card.new(8, 3)}
    it "returns pairs when the hand has one pair" do

      hand_test = Hand.new(deck, [card1, card2, card3, card4, card5])
      expect(hand_test.analyze_hand).to eq(:one_pair)
    end

    it "return flush when the hand is a flush" do
      hand_test = Hand.new(deck, [card1, card3, card5, card6, card7])
      expect(hand_test.analyze_hand).to eq(:flush)
    end

    it "return straight when the hand is a straight" do
      hand_test = Hand.new(deck, [card2, card3, card5, card6, card4])
      expect(hand_test.analyze_hand).to eq(:straight)
    end
  end
end
