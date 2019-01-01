require_relative './rock'
require_relative './paper'
require_relative './scissors'
require_relative './rocket'

module OptionFactory
  # VALID_INPUTS = %w(rock paper scissors).freeze
  attr_reader :user_choice

  ChoiceError = Class.new(StandardError)

  CHOICE_MAP = {
    rock: Rock,
    paper: Paper,
    scissors: Scissors,
    rocket: Rocket
  }

  def self.build(user_choice)
    raise ChoiceError, 'Wrong input, Please try again.' unless CHOICE_MAP.key?(user_choice.to_sym)
    CHOICE_MAP[user_choice.to_sym].new
  end
end