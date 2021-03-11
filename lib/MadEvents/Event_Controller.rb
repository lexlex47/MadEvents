require_relative "Event"
require_relative "Talk"
require_relative "Speaker"

class Event_Controller

  attr_accessor :events,
                :speakers

  def initialize
    @events = []
    @speakers = []
  end

  def create_event(name)
    event = Event.new(name)
    @events << event
    puts "Add Event #{event.name}"
  end

  def create_speaker(name)
    speaker = Speaker.new(name)
    @speakers << speaker
    puts "Add Speaker #{speaker.name}"
  end

  def create_talk(event_name, topic, start_time, end_time, speaker)
    talk = Talk.new(speaker, start_time, end_time, topic)
    select_event(event_name).add_talk(talk)
    puts "Add Talk #{talk.speaker} #{talk.start_time} #{talk.end_time} #{talk.topic}"
  end

  def print_talks()
    puts "All Talks will display here"
  end

  private

  def select_event(event_name)
    @events.detect{|e| e.name == event_name }
  end

end