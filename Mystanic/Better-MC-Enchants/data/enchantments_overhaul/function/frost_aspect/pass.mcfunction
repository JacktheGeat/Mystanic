execute unless entity @n[tag=enchantments_overhaul.frost_aspect.marker] run schedule function enchantments_overhaul:frost_aspect/schedule 10t append
summon marker ~ ~ ~ {Tags:["enchantments_overhaul.frost_aspect.marker"]}
execute as @n[tag=enchantments_overhaul.frost_aspect.marker] if block ~ ~ ~ water run scoreboard players set @s enchantments_overhaul.tmp -6
summon block_display ~-0.75 ~ ~-0.75 {Tags:["enchantments_overhaul.frost_aspect.ice"],block_state:{Name:"ice"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,2f,1.5f]}}