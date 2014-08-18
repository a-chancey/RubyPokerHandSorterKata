class Card
  include Comparable

  def initialize(card)
    @card = card
  end

  def get_cards
    @card
  end

  def beats?(other_card)
    self.get_cards > other_card.get_cards ? true : false
  end

  def <=>(other_value)
    self <=> other_value
  end
end