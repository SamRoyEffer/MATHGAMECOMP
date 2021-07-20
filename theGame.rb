module Math
  class Game
    attr_accessor :turn

    def initialize
      @turn = 1
    end

    def nextTurn
      @turn += 1
    end

    def begin(player1, player2)
      puts "Greetings #{player1} and #{player2}"
      puts "Let's see who is more math smart"
    end
    def status(player1, player2)
      puts "#{player1.name}: #{player1.lives} lives left       #{player2.name}: #{player2.lives} lives left"
    end
    def who_won(player1, player2)
      winner = player1.lives >player2.lives ? player1 : player2
      puts "CONGRATS TO #{winner.name}!"
    end
  end
end