class Cli

  def initialize
    puts "***** Mad Events *****"
  end

  def menu
    puts ""
    puts "Commands List:"
    puts ""
    puts "CREATE_EVENT"
    puts "CREATE_SPEAKER"
    puts "CREATE_TALK"
    puts "PRINT_TALKS"
    puts "Q"
    puts ""
  end

  def input
    STDIN.gets
  end

  def output(outputs)
    puts outputs
  end

end