require_relative '../flashcards'

describe Flashcard do

  let(:my_card) {Flashcard.new('question', 'answer')}

  it 'is a proper class that can be initialized' do
    expect{Flashcard.new('string1', 'string2')}.to_not raise_error
  end

  describe '#question' do
    it 'is readable' do
      expect(my_card.question).to eq('question')
    end
  end

  describe '#answer' do
    it 'is readable' do
      expect(my_card.answer).to eq('answer')
    end
  end

end

