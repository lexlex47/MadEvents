require 'time'
require_relative "command"

module Commands
  class Create_talk < Command

    def process
      @event_controller.create_talk(@event_name, @topic, @start_time, @end_time, @speaker)
    end

    private

    def is_valid?
      true
      process_args
    end

    def process_args
      @event_name = args[0]
      @speaker = args[-1]
      @end_time = Time.strptime(args[-2].strip.downcase, '%I:%M %P').strftime("%H:%M")
      @start_time = Time.strptime(args[-3].strip.downcase, '%I:%M %P').strftime("%H:%M")
      @topic = args[1..-4].join(" ")
    end

  end
end