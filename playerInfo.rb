module Math
  class playerInfo
    attr_reader :name
    attr_accessor :lives

    def initialize(name)
      @name = name
      @lives = lives
    end

    def loseALife
      @lives -= 1
    end
  end
end