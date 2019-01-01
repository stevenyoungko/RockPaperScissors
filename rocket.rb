require_relative './choice'

class Rocket < Choice
  def initialize
    @name = 'Rocket'
  end

  def can_win?(another_choice)
    ture
  end
end