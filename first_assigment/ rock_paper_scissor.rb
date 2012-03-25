
class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end



def rps_game_winner(game)
  strategy = /(P|R|S)/i
  raise WrongNumberOfPlayersError unless game.length == 2
  player1, player2 = game.first.last, game.last.last
  raise NoSuchStrategyError unless player1 =~ strategy or player2 =~ strategy
  return game.first if winner?(player1, player2)
  game.last

end

def rps_tournament(tournament)
  one, two = tournament.first, tournament.last
  winner_1 = rps_game_winner([one.first, one.last])
  winner_2 = rps_game_winner([two.first, one.last])
  match_winner = rps_match_winner([winner_1, winner_2])
end



def winner?(one,two)
  #R > S
  #S > P
  #P > R
  #one > two if deuce
  (one == two) or
  (one.eql? "R" and two.eql? "S") or
  (one.eql? "S" and two.eql? "P") or
  (one.eql? "P" and two.eql? "R")
end

game1 = [
    [
        [ ["Armando", "P"], ["Dave", "S"] ],
        [ ["Richard", "R"],  ["Michael", "S"] ],
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
]
d = []
rps_tournament(game1)