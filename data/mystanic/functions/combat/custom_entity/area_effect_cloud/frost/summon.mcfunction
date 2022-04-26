summon area_effect_cloud ~ ~ ~ {Particle:"block minecraft:blue_ice",ReapplicationDelay:0,Radius:10f,Duration:400,Tags:["chromwand_frost_coat","chromwand_frost","puff_custom"],Effects:[{Id:2b,Amplifier:5b,Duration:400,ShowParticles:1b},{Id:4b,Amplifier:5b,Duration:400,ShowParticles:1b},{Id:18b,Amplifier:5b,Duration:1,ShowParticles:1b}]}

data modify entity @e[tag=chromwand_frost_coat,limit=1,sort=nearest] Owner set from entity @s Owner
execute as @e[limit=1,sort=nearest,tag=chromwand_frost_coat] positioned ~ ~-1 ~ run function puff:combat/custom_entity/area_effect_cloud/frost/blocks
