execute store result score @s cw_frost_rng run loot spawn ~ ~ ~ loot mystanic:rng/1r5

execute if score @s cw_frost_rng matches 1 run setblock ~ ~ ~ blue_ice replace

execute if score @s cw_frost_rng matches 2 run setblock ~ ~ ~ ice replace

execute if score @s cw_frost_rng matches 3 run setblock ~ ~ ~ snow_block replace

execute positioned ~ ~ ~1 if block ~ ~ ~ #mystanic:chromwand_frost_blocks if entity @s[distance=..10] run function mystanic:combat/custom_entity/area_effect_cloud/frost/blocks

execute positioned ~ ~ ~-1 if block ~ ~ ~ #mystanic:chromwand_frost_blocks if entity @s[distance=..10] run function mystanic:combat/custom_entity/area_effect_cloud/frost/blocks

execute positioned ~ ~1 ~ if block ~ ~ ~ #mystanic:chromwand_frost_blocks if entity @s[distance=..5] run function mystanic:combat/custom_entity/area_effect_cloud/frost/blocks

execute positioned ~ ~-1 ~ if block ~ ~ ~ #mystanic:chromwand_frost_blocks if entity @s[distance=..5] run function mystanic:combat/custom_entity/area_effect_cloud/frost/blocks

execute positioned ~1 ~ ~ if block ~ ~ ~ #mystanic:chromwand_frost_blocks if entity @s[distance=..10] run function mystanic:combat/custom_entity/area_effect_cloud/frost/blocks

execute positioned ~-1 ~ ~ if block ~ ~ ~ #mystanic:chromwand_frost_blocks if entity @s[distance=..10] run function mystanic:combat/custom_entity/area_effect_cloud/frost/blocks
