require_relative "command"

module Commands
  class Error < Command

    def process
      puts "Wrong Command, Please try again"
    end

    private

    def is_valid?
      true
    end

  end
end