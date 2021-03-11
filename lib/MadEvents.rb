require_relative "MadEvents/Cli"
require_relative "MadEvents/Command_Controller"
require_relative "MadEvents/Processor"
require_relative "MadEvents/Event_Controller"

cli = Cli.new
event_controller = Event_Controller.new
processor = Processor.new(cli, event_controller)

# sleep(2)
# abort("She cannot take any more of this, Captain!")
