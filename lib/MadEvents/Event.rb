require_relative "Talk"

class Event

  attr_accessor :name,
                :talks

  def initialize(name)
    @name = name
    @talks = []
  end

  def add_talk(talk)
    @talks << talk
  end

end