execute if entity @s[nbt={Age:40}] run tag @s add partOne
execute if entity @s[nbt={Age:80}] run tag @s add partTwo
execute as @s at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.05 10
execute as @s[tag=partOne] at @s run particle minecraft:smoke ~ ~1 ~ 0 0 0 0.05 10
execute as @s[tag=partTwo] at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.05 10
execute as @s[nbt={Age:0}] at @s run playsound minecraft:entity.bee.loop_aggressive master @a ~ ~ ~ 10 1
execute as @s[nbt={Age:99}] at @s run function puff:combat/custom_entity/area_effect_cloud/bee_keeper/summon_bee_keeper
