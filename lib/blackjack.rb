def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
rand(1..11)
end

def display_card_total(card_total)
puts "Your cards add up to #{card_total}"
end
def prompt_user
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
gets.strip
end

def end_game(card_total)
puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
sum = (deal_card) + (deal_card)
display_card_total(sum)
return sum
end


def invalid_command
puts "Please enter a valid command"
end

def hit?(current)
  prompt_user
  a = get_user_input
  if a == "s"
  elsif a == "h"
    current += deal_card
  else 
    invalid_command
    prompt_user      
    a = get_user_input
  end
return current
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  hit?(initial_round)
  until initial_round > 21
  initial_round
  hit?(initial_round)
  end
end_game
end
    
