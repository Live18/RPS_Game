# This is the command file to start the RPS game
require "./RPS"

class StartGame
	rps = RockPaperScissors.new
	rps.initialize_game
end
