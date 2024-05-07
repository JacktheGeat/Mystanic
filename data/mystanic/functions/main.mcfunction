# Player click detection
execute as @a[scores={right_click=1..}] at @s run function mystanic:rightclick/main

# Custom entities and postions
execute as @e[type=!player,tag=mystanic_custom] run function mystanic:combat/custom_entity/main
execute as @e[type=potion, nbt={Item:{components:{"minecraft:custom_data":{mystanic:{}}}}}] at @s run function mystanic:combat/custom_entity/potion/main

# Check Sword of Avarice stuff
execute as @a run function mystanic:combat/sword_of_avarice/main

# resets all players rightclick to 0
scoreboard players set @a right_click 0

execute as @p at @s anchored eyes run function mystanic:test