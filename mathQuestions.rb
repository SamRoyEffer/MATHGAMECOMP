module Math
  class MathQuestions
    attr_reader :quest1, :quest2, :answer
    def initialize
      @quest1 = rand(20) + 1
      @quest2 = rand(20) + 1
      @answer = @quest1 + @quest2
    end

    def questions(turn, player)
      puts "\n ******QUESTION #{turn} *******\n\n"
      puts "\n#{player}'s turn\n\n"
      print "What is #{@quest1} + #{@quest2}? "
    end

    def correct(rightAnswer)
      @answer == rightAnswer.to_i
    end
  end
end
