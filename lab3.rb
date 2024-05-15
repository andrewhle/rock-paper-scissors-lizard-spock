require_relative "element"   # uncomment to load element.rb
require_relative "player"    # uncomment to load player.rb 
require_relative "history"   # uncomment to load history.rb

######################################### 	
#     CS 381 - Programming Lab #3		#
#										#
#  Hung Le					 			#
#  lehung@oregonstate.edu	          	#
#										#
#########################################



# your code here

def display_players
	puts "Please choose two players:"
	puts "(1) StupidBot"
	puts "(2) RandomBot"
	puts "(3) IterativeBot"
	puts "(4) LastPlayBot"
	puts "(5) Human"
end
  
def create_player(choice)
	case choice
		when 1 then StupidBot.new("StupidBot", History.new)
		when 2 then RandomBot.new("RandomBot", History.new)
		when 3 then IterativeBot.new("IterativeBot", History.new)
		when 4 then LastPlayBot.new("LastPlayBot", History.new)
		when 5 then HumanPlayer.new("Human", History.new)
		else nil
	end
end
  
def select_players
	loop do
	  print "Select player 1: "
	  choice1 = gets.chomp.to_i
	  print "Select player 2: "
	  choice2 = gets.chomp.to_i
  
	  player1 = create_player(choice1)
	  player2 = create_player(choice2)
  
	  if player1 && player2
		return player1, player2
	  else
		puts "Invalid choice(s) - start over\n"
	  end
	end
end
  
def game(rounds)
	puts "Welcome to Rock, Paper, Scissors, Lizard, Spock!\n"
  
	display_players
  
	p1, p2 = select_players
  
	puts "#{p1.name} vs. #{p2.name}\n\n"
  
	p1_score = 0
	p2_score = 0
  
	rounds.times do |round|
	  puts "Round #{round + 1}:"
  
	  p1move = p1.play
	  p2move = p2.play
  
	  p1.history.log_opponent_play(p2move)
	  p2.history.log_opponent_play(p1move)
  
	  puts "Player 1 chose #{p1move.name}"
	  puts "Player 2 chose #{p2move.name}"
	  result = p1move.compare_to(p2move)
	  puts result
  
	  if result.include?("Win")
		p1_score += 1
		puts "Player 1 won the round\n\n"
	  elsif result.include?("Lose")
		p2_score += 1
		puts "Player 2 won the round\n\n"
	  else
		puts "Round was a tie\n\n"
	  end
	end
  
	puts "Final score is #{p1_score} to #{p2_score}"
	if p1_score > p2_score
	  puts "Player 1 wins"
	elsif p2_score > p1_score
	  puts "Player 2 wins"
	else
	  puts "Game was a draw"
	end
end
  
# Main Program (should be last)
n_rounds = 5
# Call to kick off the game
game(n_rounds)