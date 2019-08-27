require "pry"
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  total = 0
  total += deal_card
  total += deal_card
  display_card_total(total)
  total
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(total)
  prompt_user
  input = get_user_input.strip
  #binding.pry
  if input == 'h'
    total += deal_card
  elsif input == 's'
    total
     #binding.pry
  else
    invalid_command
    prompt_user
    input = get_user_input
  # binding.pry 
  end
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  #binding.pry
  until total > 21
    total = hit?(total)
    #binding.pry
    display_card_total(total)
    #binding.pry
  end
  end_game(total)
end
    
