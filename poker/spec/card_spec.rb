require 'card.rb'

RSpec.describe "Card Class" do
  # let(:val)
  # let(:suit)
  subject(:card) { Card.new(11, "Diamond") }
  describe "#initialize" do
    it "should initialize a card with proper value" do
      expect(card.val).to eq(11)
      expect(card.suit).to eq("Diamond")
      expect(card.face_down?).to be true 
    end

  end
end