execute as @s at @s run tp @s ^ ^ ^1
execute as @s at @s run particle minecraft:falling_dust red_concrete ~ ~ ~ 0 0 0 1 1 normal
execute as @s at @s unless block ~ ~ ~ #puff:air run kill @s
execute as @s at @s as @e[dx=0,type=!#puff:non_sentient,type=!player,limit=1] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] positioned ~0.99 0.99 ~0.99 as @e[tag=chromwand_flare_bullet,limit=1,sort=nearest] at @s run function puff:combat/custom_entity/area_effect_cloud/flare/summon
