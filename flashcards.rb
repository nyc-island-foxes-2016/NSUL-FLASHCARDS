class Flashcard

attr_reader :question, :answer

  def initialize(question_string, answer_string)
    @question = question_string
    @answer = answer_string
  end

end
