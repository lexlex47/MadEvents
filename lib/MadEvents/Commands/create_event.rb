require_relative "command"

module Commands
  class Create_event < Command
    
    def process
      @event_controller.create_event(args[0])
    end

    private

    def is_valid?
      args.length == 1 ? true : false
    end

  end
end