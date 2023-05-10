require_relative '../classes/game'


RSpec.describe Game do
  describe '#can_be_archived?' do
    context 'when the game was last played more than 2 years ago' do
      it 'returns true' do
        game = Game.new(true, '2010-01-01', '2018-01-01')
        expect(game.can_be_archived?).to eq(true)
      end
    end

    context 'when the game was last played less than 2 years ago' do
      it 'returns false' do
        game = Game.new(true, '2010-01-01', '2021-01-01')
        expect(game.can_be_archived?).to eq(false)
      end
    end

    context 'when the game was never played' do
      it 'returns false' do
        game = Game.new(true, '2010-01-01')
        expect(game.can_be_archived?).to eq(false)
      end
    end
  end

  describe '#moved_to_archieved' do
    context 'when can_be_archived? returns true' do
      it 'changes the archived property to true' do
        game = Game.new(true, '2010-01-01', '2018-01-01')
        expect { game.moved_to_archieved }.to change { game.archived }.from(false).to(true)
      end
    end
  end
end
