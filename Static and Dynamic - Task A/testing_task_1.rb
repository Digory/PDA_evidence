### Testing task 1

# Carry out static testing on the code below.
# Read through the code. Comment any errors you can see but do not correct them in this file.

require_relative('card.rb')
class CardGame


  def checkforAce(card) # Method names should be camel case.
    if card.value = 1 # Should use the equality operator == rather than using = which assigns the value
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # Typo: should be "def" instead of "dif" and comma missing in arguments.
  if card1.value > card2.value
    return card.name # "card" has not been defined. Should be card1. Also "name" is not an attribute of Card.
  else
    card2
  end
end
end # This end should be removed and placed at the end of the file.

def self.cards_total(cards)
  total # "total" needs to be assigned to something, e.g. 0
  for card in cards
    total += card.value
    return "You have a total of" + total # The return will happen after the first iteration and so should be placed after the loop. Additionally, the total will need to be converted into a string and a space placed after "of".
  end
end
