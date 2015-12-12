class View

  def input
    $stdin.gets.chomp()
  end

  def display_intro_message
    puts "Welcome to Ruby Flash Cards. To play, just enter the correct term for each definition.  Ready?  Go!"
  end

  def display_def
    puts "\nDefinition\n "
  end

  def display_incorrect_guess
    puts "\nIncorrect!  Try again.\n"
  end

  def display_guess(input)
    puts "Guess: #{input}"
  end

  def display(output)
    puts output
  end

  def display_correct_guess
    puts "\nCorrect!\n"
  end

  def display_empty
    puts "\nYou've answered all of the questions! Goodbye!\n"
  end

  def display_exit_message
    puts "Thanks for playing!"
  end

end
