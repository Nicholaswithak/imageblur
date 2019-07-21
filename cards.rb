class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "#{@rank} of #{@suit}"
  end


  def self.random_card
    Card.new(rand(10), :spades)
      
  end
end


class Deck
  def initialize
    @ranks = [*(2..10), 'Jack', 'Queen', 'King', 'Ace']
    @suits = ['Clubs', 'Diamonds', 'Spades', 'Hearts']
    @cards = []

    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
  end


  @cards.shuffle!
  end

  def deal (number)
    number.times {@cards.shift.output_card}
end

end

deck = Deck.new
deck.deal(2)

puts "Bet, Raise, Fold?"
