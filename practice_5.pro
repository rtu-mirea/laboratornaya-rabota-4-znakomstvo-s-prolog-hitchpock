domains
  shopper = symbol
  flower_name = symbol
  flower_color = symbol
  
predicates
  can_buy(shopper,flower_name,flower_color)
  person(shopper)
  flower(flower_name,flower_color)
  likes(shopper,flower_name,flower_color)
  for_sale(flower_name,flower_color)

clauses
  person(sally).
  flower(rose,red).
  likes(sally,rose,red).
  for_sale(rose,red).
  can_buy(Shopper,Flower_name,Flower_color):- for_sale(Flower_name,Flower_color),flower(Flower_name,Flower_color),likes(Shopper,Flower_name,Flower_color).
  
goal
 can_buy(sally,rose,red).