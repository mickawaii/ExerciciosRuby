class WrongNumberOfPlayersError < StandardError ; end 
class NoSuchStrategyError < StandardError ; end


ESTRATEGIAS_VALIDAS = [ 'R', 'P', 'S']


def rps_game_winner(game)

  verificar_se_numero_de_jogadores_do_jogo_esta_correto(game)
  
  jogador1 = game[0][0]
  jogador2 = game[1][0]

  estrategia1 = game[0][1].upcase
  estrategia2 = game[1][1].upcase

  verificar_se_estrategias_sao_validas(estrategia1, estrategia2)

  jogador1_venceu?(estrategia1,estrategia2) ? jogador1 : jogador2
  
end

def verificar_se_numero_de_jogadores_do_jogo_esta_correto game
  raise WrongNumberOfPlayersError unless game.length == 2 
end

def verificar_se_estrategias_sao_validas estrategia1, estrategia2
  raise NoSuchStrategyError if (!ESTRATEGIAS_VALIDAS.member?(estrategia1) || !ESTRATEGIAS_VALIDAS.member?(estrategia2) )
end

def jogador1_venceu? estrategia1, estrategia2
  hash_com_arrays_de_estregias_que_jogador_1_vence_a_partir_da_jogada_dele = { 'P' => [ 'P', 'R'], 'R' => [ 'R', 'S'], 'S' => ['S' , 'P'] }

  hash_com_arrays_de_estregias_que_jogador_1_vence_a_partir_da_jogada_dele[estrategia1].member? estrategia2
  
end

puts rps_game_winner([ [ "Armando", "P" ], [ "Dave", "S" ] ])



