require_relative '../lib/dice_roller'

RSpec.describe DiceRoller do
  let(:dice_6) { Dice.new(6) }
  let(:dice_8) { Dice.new(8) }

  describe '#roll_all' do
    it 'rolls all dice and returns the individual results' do
      roller = DiceRoller.new([dice_6, dice_8])
      roller.roll_all
      expect(roller.results.size).to eq(2)
      expect(roller.results.first).to be_between(1, 6)
      expect(roller.results.last).to be_between(1, 8)
    end
  end

  describe '#total' do
    it 'calculates the sum of all rolled dice' do
      roller = DiceRoller.new([dice_6, dice_8])
      roller.roll_all
      expect(roller.total).to eq(roller.results.sum)
    end
  end

  describe '#result_object' do
    it 'returns a structured result object with description, values, and total' do
      roller = DiceRoller.new([dice_6, dice_8])
      roller.roll_all
      result_object = roller.result_object
      expect(result_object[:description]).to include("Rolling 2 dice")
      expect(result_object[:values].size).to eq(2)
      expect(result_object[:total]).to eq(roller.total)
    end
  end
end
