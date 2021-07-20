require "./playerInfo"
require "./mathQuestions"
require "./theGame"

def newPlayers
  print "Player 1 please sign your name"
  player1 = Math::playerInfo.new(gets.chomp)
  print "Player 2 please sign your name"
  player2 = Math::playerInfo.new(gets.chomp)

  return player1, player2
end

p1, p2 = newPlayers

game = Math::Game.new
game.begin(p1.name, p2.name)

until (p1.lives == 0 || p2.lives == 0) do
  current_player = (game.nextTurn % 2 == 1) ? p1 : p2

  quest = Math::mathQuestions.new
  quest.questions(game.nextTurn, current_player.name)
  playerAnswer = gets.chomp

  if quest.correct(playerAnswer)
    puts "The Math is strong with this one"
  else
    current_player.loseALife
    

    if current_player.lives > 0
      puts "You only know how to use a calculator! Lose a Life. You have #{current_player.lives} left."
    else
      puts "You've turned to the dark-side of Math"
    end
  end

  if current_player.lives > 0
    game.status(p1, p2)
  end
  game.nextTurn
end
game.who_won(p1,p2)