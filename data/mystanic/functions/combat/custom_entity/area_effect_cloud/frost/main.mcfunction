execute as @s at @s run tp @s ^ ^ ^0.5
execute as @s at @s run particle minecraft:falling_dust blue_concrete ~ ~ ~ 0 0 0 1 1 normal
execute as @s at @s unless block ~ ~ ~ #puff:air run kill @s
execute as @s at @s as @e[dx=0,type=!#puff:non_sentient,type=!player] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 ~0.99 ~0.99 as @e[limit=1,sort=nearest,tag=chromwand_frost_bullet] run function puff:combat/custom_entity/area_effect_cloud/frost/summon
execute as @e[tag=chromwand_frost_coat] at @s run particle minecraft:falling_dust snow_block ~ ~ ~ 10 10 10 1 20 force