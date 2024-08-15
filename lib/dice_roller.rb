require_relative 'dice'

class DiceRoller
  attr_reader :dice_set, :results

  def initialize(dice_set)
    @dice_set = dice_set
    @results = []
  end

  def roll_all
    dice_set.each do |dice|
      results << dice.roll
    end
  end

  def total
    results.sum
  end

  def result_object
    {
      description: "Rolling #{dice_set.size} dice: #{dice_set.map(&:sides).join(', ')}-sided",
      values: results,
      total: total
    }
  end
end
