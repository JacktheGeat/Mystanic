# Player click detection
execute as @a[scores={right_click=1..}] at @s run function mystanic:rightclick/main

# Blood particles
execute as @e[type=!#mystanic:non_sentient,nbt={HurtTime:8s}] at @s run particle block redstone_block ~ ~ ~ 0.5 0.5 0.5 1 10 normal

# Custom entities and postions
execute as @e[type=!player,tag=mystanic_custom] run function mystanic:combat/custom_entity/main
execute as @e[type=potion, nbt={Item:{tag:{mystanic:{}}}}] at @s run function mystanic:combat/custom_entity/potion/main

# Check Sword of Avarice stuff
execute as @a run function mystanic:combat/sword_of_avarice/main

# resets all players rightclick to 0
scoreboard players set @a right_click 0