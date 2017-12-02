class Memo < Post
	#don't need to initialize, because no other methods than in Post are needed

	def read_from_console
		puts "New notepad entry"

		@text = []
		line = nil

		while line != "end" do 
			line = STDIN.gets.chomp
			@text << line
		end

		@text.pop #add the last end word
	end

	def to_strings
		time_string = "Created: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"
		return @text.unshift(time_string) #unshift adds time_string at the beginning of the text
	end

end