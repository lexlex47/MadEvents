module Commands

  class Command

    attr_accessor :args

    def initialize(args, event_controller)
      @args = args
      @event_controller = event_controller
      process_data
    end

    def process_data
      return if !is_valid?
      process
    end

    def process

    end

    private

    def is_valid?
      return false
    end

  end

end