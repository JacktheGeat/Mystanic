execute if entity @s[tag=honey_spill] as @s at @s unless entity @e[distance=..2,type=potion,nbt={Item:{tag:{mystanic:{id:"honey_potion"}}}}] if entity @e[type=area_effect_cloud,tag=!mystanic_custom,distance=..3] run function mystanic:combat/custom_entity/area_effect_cloud/custom_potion/honey_spill