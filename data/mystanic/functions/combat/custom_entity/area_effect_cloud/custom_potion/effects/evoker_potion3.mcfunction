tp @s ~ ~ ~ ~60 ~
execute positioned ^ ^-1 ^1.5 if block ~ ~ ~ #mystanic:air positioned ~ ~-0.5 ~ run summon evoker_fangs
execute positioned ^ ^-1 ^1.5 if block ~ ~ ~ #mystanic:air positioned ~ ~-0.5 ~ rotated as @s as @e[type=evoker_fangs,limit=1,distance=0] run tp @s ~ ~ ~ ~30 ~
execute positioned ^ ^-1 ^1.5 unless block ~ ~ ~ #mystanic:air positioned ~ ~0.5 ~ run summon evoker_fangs
execute positioned ^ ^-1 ^1.5 unless block ~ ~ ~ #mystanic:air positioned ~ ~0.5 ~ rotated as @s as @e[type=evoker_fangs,limit=1,distance=0] run tp @s ~ ~ ~ ~30 ~
execute as @s at @s unless entity @s[y_rotation=-59..0] run function mystanic:combat/custom_entity/area_effect_cloud/custom_potion/effects/evoker_potion3