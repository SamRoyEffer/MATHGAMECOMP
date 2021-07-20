module Math
  class PlayerInfo
    attr_reader :name
    attr_accessor :lives

    def initialize(name, lives = 3)
      @name = name
      @lives = lives
    end

    def loseALife
      @lives -= 1
    end
  end
end