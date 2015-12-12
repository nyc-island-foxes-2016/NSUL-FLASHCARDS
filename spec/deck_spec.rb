require_relative '../deck'

describe Deck do

  let(:my_deck) {Deck.new('flashcard_samples.txt')}

  it 'is a proper class that can be initialized' do
    expect{Deck.new('flashcard_samples.txt')}.to_not raise_error
  end

  describe 'a new deck object' do
    it 'is an object' do
      expect(my_deck).to be_an Object
    end

    describe '#deck' do
      it 'is readable' do
        expect{my_deck.deck}.to_not raise_error
      end
    end

    describe '#next_flashcard' do
      it 'is returns an object' do
        expect(my_deck.next_flashcard).to be_an Object
      end
    end
  end

end

