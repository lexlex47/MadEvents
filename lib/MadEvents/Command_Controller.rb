require_relative "Commands/create_event"
require_relative "Commands/create_talk"
require_relative "Commands/create_speaker"
require_relative "Commands/print_talks"
require_relative "Commands/error"

class Command_Controller

  attr_accessor :inputs,
                :event_controller

  def initialize(input, event_controller)
    @inputs = input.split(' ')
    @event_controller = event_controller
  end

  def command_create
    @command_name = input_valid ? Object.const_get("Commands::#{command_arg.capitalize}") : Commands::Error
    @command_name.new(command_data, @event_controller)
  end

  def is_print_command
    @command_name == Commands::Print_talks
  end

  def is_error_command
    @command_name == Commands::Error
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