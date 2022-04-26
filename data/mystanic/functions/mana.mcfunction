# Mana recovery

execute as @a if score @s player_mana < @s max_mana run scoreboard players add @s mana_recovery 1

execute as @a if score @s mana_recovery matches 2400.. run scoreboard players add @s player_mana 1
execute as @a if score @s mana_recovery matches 2400.. run scoreboard players set @s mana_recovery 0

    # stop mana overvalues and undervalues:

execute as @a at @s if score @s player_mana > @s max_mana run scoreboard players operation @s player_mana = @s max_mana
execute as @a at @s if score @s player_mana matches ..-1 run scoreboard players set @s player_mana 0
    # Stops mana recovering while at max mana
execute as @a at @s if score @s player_mana >= @s max_mana run scoreboard players set @s mana_recovery 0

# Creative mode unlimited mana
execute as @a[gamemode=creative] run scoreboard players operation @s player_mana = @s max_mana