require 'deck.rb'

RSpec.describe "Deck Class" do
  subject(:deck) { Deck.new }
  describe "#initialize" do
    it "should initialize a deck without duplicates" do
      expect(deck.cards.uniq).to eq(deck.cards)
    end

    it "should contains 52 cards" do
      expect(deck.cards.length).to eq(52)
    end
  end

  describe "#shuffle" do
    original_deck = deck.cards.dup
    deck.shuffle
    it "should shuffle the deck" do
      expect(deck.shuffle).to_not eq(original_deck)
    end
  end
end