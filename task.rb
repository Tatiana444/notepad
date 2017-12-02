require 'date'

class Task < Post
	
	def initialize
		super

		@due_date = Time.now
	end

	def read_from_console

		puts "What to do?"
		@text = STDIN.gets.chomp

		puts "Deadline?"
		input = STDIN.gets.chomp
		@due_date = Date.parse(input) #save date as a line

	end

	def to_strings

		time_string = "Created: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"
		deadline = "Deadline: #{@due_date}" 

		return [deadline, @text, time_string]
	end

end