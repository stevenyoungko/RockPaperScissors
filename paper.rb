require_relative './choice'

class Paper < Choice
  def initialize
    @name = 'Paper'
  end

  def can_win?(another_choice)
    another_choice.name == 'Rock'
  end
end