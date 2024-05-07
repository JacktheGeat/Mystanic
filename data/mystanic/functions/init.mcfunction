# Gamerules
gamerule sendCommandFeedback true
gamerule commandBlockOutput false

# Scoreboard stuff
    # Rightclick scoreboard setup
    scoreboard objectives add right_click used:carrot_on_a_stick
    execute as @a unless score @s right_click matches 0.. run scoreboard players set @s right_click 0

    # Positional scoreboard
    scoreboard objectives add pos_x dummy
    scoreboard objectives add pos_y dummy
    scoreboard objectives add pos_z dummy

    # Check if someone is sneaking
    scoreboard objectives add player_sneak minecraft.custom:minecraft.sneak_time
    # RNG dummy scoreboard
    scoreboard objectives add rng dummy

    # Mana scoreboards
    scoreboard objectives add player_mana dummy [{"text":"Mana","color":"blue","bold":true}]
    scoreboard objectives add mana_recovery dummy
    scoreboard objectives add max_mana dummy
    execute as @a unless score @s player_mana matches 0.. run scoreboard players set @s player_mana 10
    execute as @a unless score @s max_mana matches 0.. run scoreboard players set @s max_mana 100
    execute as @a unless score @s mana_recovery matches 0.. run scoreboard players set @s mana_recovery 0

    # Food timer
    scoreboard objectives add food_timer dummy
    # Sword of Avarice scoreboard
    scoreboard objectives add avarice_kills dummy
    scoreboard objectives add avarice_death custom:deaths
    # Custom Entity dummy scoreboard
    scoreboard objectives add CE_dummy dummy

    # May remove these later.
    scoreboard objectives add elemental_charge dummy
    scoreboard objectives add slot_count dummy
    scoreboard objectives add id dummy
    execute as @a unless score @s id matches 0.. run execute store result score @s id run data get entity @s UUID[0]


# make the score of "#100" on CE_dummy is 100 for math stuff
    scoreboard players set #100 CE_dummy 100

    data modify storage avarice_data {} set value {}


# Reload Message
tellraw @a [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"=========================","color":"gray"},{"text":"\nMade by Jack the GEAT","color":"gold","bold":true},{"text":"\nPuff","color":"gray","bold":false,"italic":false},{"text":"\nDeathByAWaffle","color":"gray","bold":false,"italic":false},{"text":"\ncinnmanmonrowl","color":"gray","bold":false,"italic":false},{"text":"\nKekiwi","color":"gray","bold":false,"italic":false},{"text":"\nWafflesAreBetter07","color":"gray","bold":false,"italic":false},{"text":"\nRequires the Mystanic Resource Pack","color":"red","bold":false,"italic":false},{"text":"\nPack Loaded!","color":"green","bold":true},{"text":"\n=========================","color":"gray"}]