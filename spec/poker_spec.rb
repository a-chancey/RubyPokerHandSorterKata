require 'rspec'
require 'lib/hand'

describe 'poker hand comparer' do

  it 'knows that 6 beats a 4' do
    #Create two hands and fill the arrays with cards
    white = Hand.new %w(6D 5H 4S 2C 2D)
    black = Hand.new %w(2H 3C 2H 3S 4C)
    #expect like it says using the beats? method
    expect(white.beats?(black)).to eq true
    expect(black.beats?(white)).to eq false
  end

end