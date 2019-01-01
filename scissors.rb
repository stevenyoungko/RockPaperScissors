require_relative './choice'

class Scissors < Choice
  def initialize
    @name = 'Scissors'
  end

  def can_win?(another_choice)
    another_choice.name == 'Paper'
  end
end