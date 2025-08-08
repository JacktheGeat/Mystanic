# If potion exists, run schedule next tick
execute if entity @e[type=lingering_potion,nbt={Item:{components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:unluck",amplifier:127b}]}}}}] run schedule function bee_keeper:bee_keeper/honey_spill/schedule 1t

# If AOE cloud exists, apply potion effects
execute if entity @e[type=area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:unluck",amplifier:127b}]}}] as @e[type=area_effect_cloud,nbt={potion_contents:{custom_effects:[{id:"minecraft:unluck",amplifier:127b}]}}] at @s run function bee_keeper:bee_keeper/honey_spill/aoe_cloud