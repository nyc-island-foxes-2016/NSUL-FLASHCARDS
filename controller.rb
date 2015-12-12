require_relative 'checker'
require_relative 'deck'
require_relative 'flashcards'
require_relative 'parser'
require_relative 'view'

require 'pry'

class Controller
  include Parseable
  include Checkable

  def initialize(args)
    @deck = Deck.new(args[0])
    @viewer = View.new
    run_interface
  end

  def run_interface
    @viewer.display_intro_message
    user_input = @viewer.input
    until user_input == "exit"
      if check_for_empty_deck?
        @viewer.display_empty
        break
      end
      current_flashcard = @deck.next_flashcard
      @viewer.display_def
      @viewer.display(current_flashcard.question)
      until user_input == current_flashcard.answer || user_input == 'exit'
        user_input = @viewer.input
        check_user_input(user_input, current_flashcard)
      end
    end
  end

  def check_for_empty_deck?
    @deck.deck.empty?
  end

  def check_user_input(user_input, current_flashcard)
    case user_input
    when "exit"
      @viewer.display_exit_message
    when current_flashcard.answer
      @viewer.display_guess(user_input)
      @viewer.display_correct_guess
    else
      @deck.add_card_to_deck(current_flashcard)
      @viewer.display_guess(user_input)
      @viewer.display_incorrect_guess
    end
  end
end

Controller.new(ARGV)
