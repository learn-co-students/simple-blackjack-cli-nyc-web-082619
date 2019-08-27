def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  num = rand 1..11
end

def display_card_total(cardTotal)
  puts "Your cards add up to #{cardTotal}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(cardTotal)
  puts "Sorry, you hit #{cardTotal}. Thanks for playing!"
end

def initial_round
  cardTotal = deal_card() + deal_card() 
  display_card_total(cardTotal)
  return cardTotal
end

def hit?(currentCardTotal)
  prompt_user()
  input = get_user_input()
  while (true)
    if input == "s"
      return currentCardTotal
    elsif input == "h"
      currentCardTotal += deal_card()
      return currentCardTotal
    else 
      invalid_command()
      prompt_user()
      input = get_user_input()
    end
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome()
  cardTotal = initial_round()
  while cardTotal < 21
    prompt_user()
    input = get_user_input()
    if input == "h"
      cardTotal += deal_card()
      display_card_total(cardTotal)
    end
  end
  end_game(cardTotal)
end
    
