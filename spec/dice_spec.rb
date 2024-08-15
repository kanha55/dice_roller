require_relative '../lib/dice'

RSpec.describe Dice do
  describe '#roll' do
    it 'returns a value between 1 and the number of sides' do
      dice = Dice.new(6)
      result = dice.roll
      expect(result).to be_between(1, 6)
    end
  end
end
