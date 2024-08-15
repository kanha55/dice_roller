require_relative 'dice_roller'

class CLI
  def self.start
    puts "Welcome to the Dice Roller!"
    puts "How many dice would you like to roll?"
    num_dice = gets.chomp.to_i

    dice_set = []
    num_dice.times do |i|
      puts "Enter the number of sides for dice ##{i + 1}:"
      sides = gets.chomp.to_i
      dice_set << Dice.new(sides)
    end

    roller = DiceRoller.new(dice_set)
    roller.roll_all

    result = roller.result_object
    puts result[:description]
    puts "Values: #{result[:values].join(', ')}"
    puts "Total: #{result[:total]}"
  end
end

CLI.start
