# Basic algorithm for sequence game.

def GenerateCardDeck(card_deck)
  suits = ["clubs", "diamonds", "hearts", "spades"]
  card_types = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
  suits.each do |suit|
    card_types.each do |card|
      card_deck.push("#{suit}_#{card}")
    end
  end
end

def RemoveCardsFromDeck(current_deck, remove_set)
  remove_set.each do |del|
    current_deck.delete_at(current_deck.index(del))
  end
  return current_deck
end

def PickRandomCards(players, card_deck)
  player_deck = []
  for i in 0..players
    player_cards = card_deck.sample(5)
    card_deck =  RemoveCardsFromDeck(card_deck, player_cards)
    player_deck.push(player_cards)
  end
  return player_deck
end

def main()
  card_deck = []
  players = 6
  GenerateCardDeck(card_deck)
  random_cards = PickRandomCards(players, card_deck)
  print random_cards
  puts
end

main()
