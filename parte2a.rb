class WrongNumberOfPlayersError < StandardError ; end 
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length == 2 
	if(game[0][1] == game[1][1])
		return game[0][0]
	elsif((game[0][1] == 'R' && game[1][1] == 'S') || 
		(game[0][1] == 'S' && game[1][1] == 'P') ||
		(game[0][1] == 'P' && game[1][1] == 'R'))
		return game[0][0]
	else
		return game[1][0]
	end
	puts game.uppercase
end