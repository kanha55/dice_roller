# Dice Roller

This is a simple command-line application written in Ruby that simulates rolling a set of dice.

## Project Structure

The project is organized into two main directories:

- `lib/`: This directory contains the main application code.
  - [`cli.rb`](lib/cli.rb): This is the entry point of the application. It handles user interaction.
  - [`dice_roller.rb`](lib/dice_roller.rb): This class represents a set of dice and provides methods to roll them and calculate the total.
  - [`dice.rb`](lib/dice.rb): This class represents a single die with a specified number of sides.

- `spec/`: This directory contains the unit tests for the application.
  - [`dice_roller_spec.rb`](spec/dice_roller_spec.rb): This file contains tests for the `DiceRoller` class.
  - [`dice_spec.rb`](spec/dice_spec.rb): This file contains tests for the `Dice` class.

## How to Run

1. Navigate to the project directory in your terminal.
2. Run `ruby lib/cli.rb` to start the application.

## How to Test

1. Navigate to the project directory in your terminal.
2. Install rspec gem and Run `rspec` to run the unit tests.