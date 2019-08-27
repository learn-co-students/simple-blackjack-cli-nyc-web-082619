def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  (1 + rand(11))
end

def display_card_total(card_sum)
  puts "Your cards add up to #{card_sum}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(card_total)
  prompt_user
  user_var = get_user_input
  sum = card_total
  
  if(user_var == 'h')
    sum += deal_card
  end
    
  if(user_var == 's')
    card_total
  end
  
  if(user_var != 's' && user_var != 'h')
    invalid_command
    hit?(card_total)
  end
    
  sum
  
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  
  while(!(card_total > 21)) do
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
    
