require_relative "command"

module Commands
  class Print_talks < Command

    def process
      @event_controller.print_talks
    end

    private

    def is_valid?
      true
    end

  end
end