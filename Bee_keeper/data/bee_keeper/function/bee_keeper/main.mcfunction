# randomly selects an attack
execute store result score #temp dummy run random value 0..2
execute if score #temp dummy matches 0 run function bee_keeper:bee_keeper/summon_bees_1
execute if score #temp dummy matches 1 run function bee_keeper:bee_keeper/summon_bees_2
execute if score #temp dummy matches 2 run function bee_keeper:bee_keeper/honey_spill/main

# Heals stingers and sets all bees angry at the nearest player for 16 seconds
execute as @n[type=bee,distance=..20,limit=20] run data modify entity @s AngryAt set from entity @p UUID
execute as @n[type=bee,distance=..20,limit=20] run data merge entity @s {HasStung:0b,AngerTime:320}