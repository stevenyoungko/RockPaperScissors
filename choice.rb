class Choice
  attr_reader :name

  def initialize
    @name = 'not defined yet.'
  end

  def can_win?(another_choice)
    raise NotImplementedError, "應該要實作這個方法 #{self.class}#can_win?"
  end
end
