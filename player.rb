class Player
  attr_reader :name, :choice
  def initialize(name)
    @name = name
  end

  def choose
    puts "What's #{name} choice?"

    user_choice = gets.chomp

    @choice = OptionFactory.build(user_choice)

    rescue OptionFactory::ChoiceError => error
      p error.message
      let_player_choose_again
  end

  def can_win?(another_player)
    choice.can_win?(another_player.choice)
  end

  private

  def let_player_choose_again
    @new_user_choice = self.choose
  end
end