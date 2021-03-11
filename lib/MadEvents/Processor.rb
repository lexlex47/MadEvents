require_relative "Command_Controller"

class Processor

  attr_accessor :cli,
                :event_controller

  def initialize(cli, event_controller)
    @cli = cli
    @event_controller = event_controller
    @cli.menu
    process
  end

  private

  def process
    while 
      input = cli.input
      command = Command_Controller.new(input, @event_controller)
      break if command.exit
      result = command.command_create
      process_output(result.process) if command.is_print_command
    end
  end

  def process_output(contents)
    contents.each do |c|
      cli.output(c)
    end
  end

end