
# Checks if the player is sneaking, based on that check the left/right hand for a mystanic item, upon fail, check the other hand
execute if entity @s[predicate=!minecraft:sneaking,predicate=mystanic:mystanic_item_offhand] run function mystanic:rightclick/offhand/main
execute if entity @s[predicate=!minecraft:sneaking,predicate=mystanic:mystanic_item_mainhand,predicate=!mystanic:mystanic_item_offhand] run function mystanic:rightclick/mainhand/main

execute if entity @s[predicate=minecraft:sneaking,predicate=mystanic:mystanic_item_mainhand] run function mystanic:rightclick/mainhand/main
execute if entity @s[predicate=minecraft:sneaking,predicate=mystanic:mystanic_item_offhand,predicate=!mystanic:mystanic_item_mainhand] run function mystanic:rightclick/offhand/main