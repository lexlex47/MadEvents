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
      command = Command_Controller.new(input, event_controller)
      break if command.exit
      command.command_create
    end
  end

end