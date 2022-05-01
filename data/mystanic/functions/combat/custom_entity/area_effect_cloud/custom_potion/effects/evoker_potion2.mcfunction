execute at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoAI:1b,NoGravity:1b,Tags:["temporary"]}
execute if entity @s[nbt={Age:1}] at @e[tag=temporary] run summon evoker_fangs ~ ~-0.5 ~
execute if entity @s[nbt={Age:6}] at @e[tag=temporary] run function mystanic:combat/custom_entity/area_effect_cloud/custom_potion/effects/evoker_potion3
execute if entity @s[nbt={Age:12}] at @e[tag=temporary] run function mystanic:combat/custom_entity/area_effect_cloud/custom_potion/effects/evoker_potion4
kill @e[tag=temporary,distance=0,limit=1]