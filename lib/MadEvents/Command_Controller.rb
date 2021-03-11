require_relative "Commands/create_speaker"
require_relative "Commands/print_talks"
require_relative "Commands/error"
require_relative "Commands/create_event"
require_relative "Commands/create_talk"

class Command_Controller

  attr_accessor :inputs,
                :event_controller

  def initialize(input, event_controller)
    @inputs = input.split(' ')
    @event_controller = event_controller
  end

  def command_create
    command_name = input_valid ? Object.const_get("Commands::#{command_arg.capitalize}") : Commands::Error
    command_name.new(command_data, @event_controller)
  end

  def exit
    @inputs.include?("Q")
  end

  private

  def input_valid
    !@inputs.length.zero? && Object.const_defined?("Commands::#{command_arg.capitalize}")
  end

  def command_arg
    @inputs.first.strip.downcase
  end

  def command_data
    @inputs[1..-1]
  end

end