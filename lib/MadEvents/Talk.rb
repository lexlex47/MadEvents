class Talk

  attr_accessor :speaker,
                :start_time,
                :end_time,
                :topic

  def initialize(speaker, start_time, end_time, topic)
    @speaker = speaker
    @start_time = start_time
    @end_time = end_time
    @topic = topic
  end

end