execute as @n[limit=10, tag=enchantments_overhaul.frost_aspect.marker] run scoreboard players add @s enchantments_overhaul.tmp 1
execute as @n[limit=10, tag=enchantments_overhaul.frost_aspect.marker] if score @s enchantments_overhaul.tmp matches 6.. at @s run function enchantments_overhaul:frost_aspect/end
schedule function enchantments_overhaul:frost_aspect/schedule 10t