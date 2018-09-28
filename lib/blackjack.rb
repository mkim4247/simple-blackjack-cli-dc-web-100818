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
  gets.chomp 
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  card_1 = deal_card 
  card_2 = deal_card 
  sum = card_1 + card_2
  display_card_total(sum)
  sum 
end

def hit?(current_hand_total)
  prompt_user
  user_input = get_user_input
  if user_input == "h"
    current_hand_total + deal_card
  elsif user_input == "s"
    current_hand_total
  end
end

def invalid_command
  user_input = get_user_input
    if user_input != "s" || "h"
    puts "Please enter a valid command"
    prompt_user
  end 
end

def runner 
  welcome
  hand = initial_round
  until hand >= 21
    hit?(hand)
    hand += deal_card
    display_card_total(hand)
  end
  end_game(hand)
end
    
