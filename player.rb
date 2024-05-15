require_relative "element"
require_relative "history"

class Player
    attr_reader :name, :history

    def initialize (name, history)
        @name = name
        @history = history
        @moves = [Rock.new("Rock"), Paper.new("Paper"), Scissors.new("Scissors"), Lizard.new("Lizard"), Spock.new("Spock")]
    end

    def play
        fail "This method should be overridden"
    end
end

class StupidBot < Player
    def play
        move = Rock.new("Rock")
        @history.log_play(move)
        return move
    end
end

class RandomBot < Player
    def play
        move = @moves.sample
        @history.log_play(move)
        return move
    end
end

class IterativeBot < Player
    def initialize(name, history)
        super(name, history)
        @i = 0
    end
    
    def play
        move = @moves[@i]
        @history.log_play(move)
        @i = (@i + 1) % @moves.size
        return move
    end
end

class LastPlayBot < Player
    def play
        if @history.opponent_plays.empty?
            move = Rock.new("Rock")
        else
            move = @history.opponent_plays.last
        end
        @history.log_play(move)
        return move
    end
end

class HumanPlayer < Player
    def play
        loop do
          puts "(1) Rock"
          puts "(2) Paper"
          puts "(3) Scissors"
          puts "(4) Lizard"
          puts "(5) Spock"
          print "Enter your move: "
          choice = gets.chomp.to_i
    
          case choice
          when 1
            move = Rock.new("Rock")
          when 2
            move = Paper.new("Paper")
          when 3
            move = Scissors.new("Scissors")
          when 4
            move = Lizard.new("Lizard")
          when 5
            move = Spock.new("Spock")
          else
            puts "Invalid move - try again\n"
            next
          end
    
          @history.log_play(move)
          return move
        end
    end
end