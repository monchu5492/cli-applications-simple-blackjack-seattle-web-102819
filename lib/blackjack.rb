require 'pry'


def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
      card = rand(1..11)
      return card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
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
   card1 = deal_card
   card2 = deal_card
   card_total = card1 + card2
   display_card_total(card_total)
   return card_total
end

def hit?(number)
  prompt_user
  input = get_user_input
  if input == 's'
    return number
  elsif input == 'h'
    return deal_card + number
  else 
    invalid_command
    hit?(number)
  end
end

def invalid_command
   puts "Please enter a valid command"
end
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
initial_round
hit?(initial_round)
display_card_total(hit?)
  while 
  hit? <= 21
  end_game
 end 
end
    
