execute as @s at @s as @e[type=bee,tag=!friendly,distance=..15] run data modify entity @s AngryAt set from entity @p UUID
execute as @s at @s as @e[type=bee,tag=!friendly,distance=..15] run data merge entity @s {AngerTime:100}
execute as @s at @s unless score @s CE_dummy matches 1.. run function puff:combat/custom_entity/skeleton/bee_keeper/spell
scoreboard players remove @s CE_dummy 1
