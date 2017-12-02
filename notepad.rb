require_relative 'post.rb'
require_relative 'link.rb'
require_relative 'task.rb'
require_relative 'memo.rb'

puts "Hello! What to write in?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size

	choices.each_with_index do |type, index| #loop on all the elements of the array
		puts "\t#{index}. #{type}"
	end

	puts "Choose one!"
	choice = STDIN.gets.chomp.to_i
	puts "Your choice #{choice}" 

end

entry = Post.create(choice) #create class depending on the user entry

entry.read_from_console

entry.save

puts "Saved!"