require_relative '../parser.rb'
require_relative '../checker.rb'
require_relative '../flashcards.rb'
include Parseable
include Checkable


describe Parseable do
  let(:file) {'spec/parse_test_file.txt'}
  let(:our_flashcards) {Flashcard.new("What year is it?", "2015")}

  describe '#parse_file' do
    it 'should create a flashcard with a question that matches "What year is it?"' do
      expect(parse_file(file).first.question).to eq (our_flashcards.question)
    end
  end
  describe '#parse_file' do
    it 'should create a flashcard with an answer that matches "2015"' do
      expect(parse_file(file).first.answer).to eq (our_flashcards.answer)
    end
  end
end

describe Checkable do
  let(:element_1) {"hello"}
  let(:element_2) {"hi"}
  let(:element_3) {"hello"}
  let(:element_4) {"HELLO"}

  describe 'Checkable' do
    it 'matching strings should return true' do
      expect(Checkable.check_match(element_1,element_3)).to be true
    end
  end

  describe 'Checkable' do
    it 'two different strings should return false' do
      expect(Checkable.check_match(element_1,element_2)).to be false
    end
  end
  describe 'Checkable' do
    it 'matching strings of different cases should return false' do
      expect(Checkable.check_match(element_1,element_4)).to be false
    end
  end
end
