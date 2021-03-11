require_relative "command"

module Commands
  class Print_talks < Command

    def process
      @event_controller.print_talks(args[0])
    end

    private

    def is_valid?
      args.length == 1 && @event_controller.event_valid?(args[0])
    end

  end
end