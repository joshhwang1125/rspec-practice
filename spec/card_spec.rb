require 'rspec'
require 'card.rb'

describe Card do
  subject(:card) {Card.new(12, :spades)}

  describe "#initialize" do
    it "receives a value" do
      expect(subject.value).to eq(12)
    end

    it "receives a suit" do
      expect(subject.suit).to eq(:spades)
    end
  end
end
