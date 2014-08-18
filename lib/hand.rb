class Hand
  require 'card'
  include Enumerable
  include Comparable

  def initialize(cards)
    @cards = cards
  end

  def get_cards
    @cards
  end

  def beats?(other_hand)
    #get high card from each hand
    @self_high_card = Card.new(get_high_card(self))
    @other_high_card = Card.new(get_high_card(other_hand))

    #determine which hand beats the other based on high card
    @self_high_card.beats?(@other_high_card)
  end

  def get_high_card(input_hand)
    #find the highest card from the array
    input_hand.get_cards.max
  end

  def <=>(other_value)
    self <=> other_value
  end

end
