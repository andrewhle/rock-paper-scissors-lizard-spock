# Superclass Element
class Element 
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def compare_to(other)
        fail "This method should be overridden"
    end
end

# Subclass Rock
class Rock < Element

    def initialize (name = "Rock")
        super("Rock")
    end

    def compare_to(other)
        if other.is_a?(Scissors) || other.is_a?(Lizard)
            return "Rock crushes #{other.name}. Win"
        elsif other.is_a?(Paper)
            return "Paper covers Rock. Lose"
        elsif other.is_a?(Spock)
            return "Spock vaporizes Rock. Lose"
        elsif other.is_a?(Rock)
            return "Rock equals Rock. Tie"
        end
    end
end

# Subclass Paper
class Paper < Element
    def initialize ( name = "Papaer")
      super("Paper")
    end
  
    def compare_to(other)
      if other.is_a?(Rock)
        return "Paper covers Rock. Win"
      elsif other.is_a?(Spock)
        return "Paper disproves Spock. Win"
      elsif other.is_a?(Scissors)
        return "Scissors cut Paper. Lose"
      elsif other.is_a?(Lizard)
        return "Lizard eats Paper. Lose"
      elsif other.is_a?(Paper)
        return "Paper equals Paper. Tie"
      end
    end
end
  
  # Subclass Scissors
class Scissors < Element
    def initialize ( name = "Scissors")
      super("Scissors")
    end
  
    def compare_to(other)
      if other.is_a?(Paper)
        return "Scissors cut Paper. Win"
      elsif other.is_a?(Lizard)
        return "Scissors decapitate Lizard. Win"
      elsif other.is_a?(Rock)
        return "Rock crushes Scissors. Lose"
      elsif other.is_a?(Spock)
        return "Spock smashes Scissors. Lose"
      elsif other.is_a?(Scissors)
        return "Scissors equals Scissors. Tie"
      end
    end
end
  
  # Subclass Lizard
class Lizard < Element
    def initialize ( name = "Lizard")
      super("Lizard")
    end
  
    def compare_to(other)
      if other.is_a?(Paper)
        return "Lizard eats Paper. Win"
      elsif other.is_a?(Spock)
        return "Lizard poisons Spock. Win"
      elsif other.is_a?(Rock)
        return "Rock crushes Lizard. Lose"
      elsif other.is_a?(Scissors)
        return "Scissors decapitate Lizard. Lose"
      elsif other.is_a?(Lizard)
        return "Lizard equals Lizard. Tie"
      end
    end
end
  
  # Subclass Spock
class Spock < Element
    def initialize ( name = "Spock")
      super("Spock")
    end
  
    def compare_to(other)
      if other.is_a?(Rock)
        return "Spock vaporizes Rock. Win"
      elsif other.is_a?(Scissors)
        return "Spock smashes Scissors. Win"
      elsif other.is_a?(Paper)
        return "Paper disproves Spock. Lose"
      elsif other.is_a?(Lizard)
        return "Lizard poisons Spock. Lose"
      elsif other.is_a?(Spock)
        return "Spock equals Spock. Tie"
      end
    end
end
  
# rock  = Rock.new('Rock')
# paper = Paper.new('Paper')
# puts rock.compare_to(paper)
# puts paper.compare_to(rock)
# puts rock.compare_to(rock)
