# This is a RockPaperScissors Ruby app
class RockPaperScissors

	def initialize_game
		puts "This is Rock Paper Scissors"
		@my_array = ["Rock", "Paper", "Scissors"]
		start_game
	end

	def start_game
		valid_choice = false
		@play_again = false
		while !valid_choice || @play_again
			user_input = ask_for_input
			puts user_input
			if valid_input(user_input.capitalize)
				valid_choice = true
				start_battle(user_input.capitalize)
			else
				puts "That's not a valid choice"
			end
		end
	end

	def ask_for_input
		puts "Pick one. Then I'll pick one"
		puts "Your choices are Rock, Paper, or Scissors?"
		@my_array.each_with_index do |option, o_index|
			puts "#{option}"
		end
		gets.chomp


	end

	def valid_input(user_input)
		@my_array.include?(user_input) ? true : false 


	end

	def start_battle(user_input)
		i_pick = @my_array.sample
		puts i_pick
		if i_pick == user_input
			puts "It's a tie. Let's start over."
			@play_again = true
		end
		case i_pick
		when "Rock"
			case user_input
		  		when "Paper" 
		  	puts "I win!!!"
		  		when "Scissors"
			  puts "You win."
			end
		when "Paper"
			case user_input
			when "Rock"
				puts "I win!!!"
			when "Scissors"
				puts "You win."
		  end
		when "Scissors" 
			case user_input
			when "Paper"
				puts "I win!!!"
			when "Rock"
				puts "You win."
		  end
		end
	end
end

