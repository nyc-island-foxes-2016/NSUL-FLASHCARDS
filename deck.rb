require_relative 'parser'
require_relative 'flashcards'
require 'pry'

class Deck
  include Parseable
  attr_reader :deck

  def initialize(file)
    @deck = parse_file(file)
  end

  def next_flashcard
    @deck.shuffle!.shift
  end

  def add_card_to_deck(card)
    @deck.push(card) if !@deck.include?(card)
  end
end
