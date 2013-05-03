class WrongNumberOfPlayersError < StandardError ; end 
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length == 2 
	game[0][1].upcase!
	game[1][1].upcase!
	str = ['R', 'P', 'S']
	if(!str.member?(game[0][1]) || !str.member?(game[1][1]))
		raise NoSuchStrategyError
	end
	if(game[0][1] == game[1][1])
		return game[0].inspect
	elsif((game[0][1] == 'R' && game[1][1] == 'S') || 
		(game[0][1] == 'S' && game[1][1] == 'P') ||
		(game[0][1] == 'P' && game[1][1] == 'R'))
		return game[0]
	else
		return game[1]
	end
end

def rps_tournament_winner(tournament)
		if(tournament[0][0].class == String)
			return tournament = rps_game_winner(tournament)
		else
			tournament[0] = rps_tournament_winner(tournament[0])
			tournament[1] = rps_tournament_winner(tournament[1])
		end
		if(tournament[0][0].class == String)
			return tournament = rps_game_winner(tournament)
		end
end
