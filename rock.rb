require_relative './choice'

class Rock < Choice
  def initialize
    @name = 'Rock'
  end

  def can_win?(another_choice)
    another_choice.name == 'Scissors'
  end
end