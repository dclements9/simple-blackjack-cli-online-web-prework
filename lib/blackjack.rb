require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return 1 + rand(11)
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
  card0 = deal_card
  card1 = deal_card
  sum = card0 + card1
  display_card_total(sum)
  return sum
end
## Here
def hit?(current_total)
  prompt_user
  input = get_user_input
  #case input
#  when "h"
#    newCard = deal_card
#    new_total = current_total + newCard
#    return new_total
#  when "s"
  #Do not deal a card
#  else
#    invalid_command
#  end

  if input == "h"
    newCard = deal_card
    binding.pry
    puts newCard
    current_total = current_total + newCard
    return current_total
  elsif input == "s"
    #Do not deal a card
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
