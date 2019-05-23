class Card
  # VALUES = (1..13).to_a
  # SUITS = %w[Diamond Heart Clubs Spades] 

  attr_reader :val, :suit

  def initialize(val, suit)
    # @val = VALUES.sample
    # @suit = SUITS.sample
    @val = val
    @suit = suit
    @face_down = true 
  end

  def face_down?
    @face_down
  end

  def to_s
    "#{@val} #{@suit}"
  end

end