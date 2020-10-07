def welcome
  puts 'Welcome to the Blackjack Table'
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

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  deal1 = deal_card
  deal2 = deal_card
  sum = deal1 + deal2
  display_card_total(sum)
  return sum
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(current_card_total)
  prompt_user
  user_input = get_user_input
  
  if user_input == 's'
    current_card_total
  elsif user_input == 'h'
    deal_card + current_card_total
  else
    invalid_command
    prompt_user
  end
end

def runner
  welcome
  sum = initial_round
  until sum >= 21
    hit?(sum)
   display_card_total(sum) 
  end
  end_game(sum)
end
  