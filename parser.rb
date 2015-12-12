module Parseable

  def parse_file(file)

    text_line_array = []
    def_answer_array = []
    File.foreach(file) do |line|
      text_line_array << line.chomp() if !line.chomp().empty?
    end
    text_line_array.each_slice(2) {|item| def_answer_array << Flashcard.new(item[0],item[1])}
    return def_answer_array
  end

end
