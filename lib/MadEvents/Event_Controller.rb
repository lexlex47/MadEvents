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

  def create_talk(event_name, topic, start_time, end_time, speaker_name)
    speaker = select_speaker(speaker_name)
    talk = Talk.new(speaker, start_time, end_time, topic)
    select_event(event_name).add_talk(talk)
    puts "Add Talk #{talk.speaker.name} #{talk.start_time} #{talk.end_time} #{talk.topic}"
  end

  def event_valid?(event_name)
    select_event(event_name).nil?
  end

  def talks_valid?(event_name, speaker_name, start_time, end_time)
    find_event(event_name, start_time, end_time) && find_speaker(speaker_name)
  end

  def print_talks(event_name)
    event = select_event(event_name)
    contents = []
    contents << " "
    event.talks.sort_by(&:start_time).each do |talk|
      contents << "#{talk.start_time} - #{talk.end_time}"
      contents << "#{talk.topic} presented by #{talk.speaker.name}"
    end
    contents << " "
    contents
  end

  private

  def select_event(event_name)
    @events.detect{|e| e.name == event_name }
  end

  def select_speaker(speaker_name)
    @speakers.detect{|s| s.name == speaker_name}
  end

  def duplicate_event_name?(event_name)
    @events.select{|e| e.name == event_name }.lenghth != 1 ? true : false  
  end

  def find_speaker(speaker_name)
    speaker = select_speaker(speaker_name)
    !speaker.nil? ? true : false
  end

  def find_event(event_name, start_time, end_time)
    event = select_event(event_name)
    return false if event.nil?
    find_conflict(event, start_time, end_time) || !wrong_time(start_time, end_time)
  end

  def find_conflict(event, start_time, end_time)
    return true if event.talks.length.zero?
    event.talks.each do |talk|
      return false if (talk.start_time..talk.end_time).cover?(start_time) || (talk.start_time..talk.end_time).cover?(end_time)
    end
    return true
  end
  
  def wrong_time(start_time, end_time)
    start_time >= end_time ? true : false
  end

end