require_relative "card.rb"

class Deck
  VALUES = (1..13).to_a
  SUITS = %w[Diamond Heart Clubs Spades] 

  attr_reader :cards

  def initialize
    @cards = []
    VALUES.each do |value|
      SUITS.each do |suit|
        @cards << Card.new(value, suit)
      end
    end
    puts cards
  end

end