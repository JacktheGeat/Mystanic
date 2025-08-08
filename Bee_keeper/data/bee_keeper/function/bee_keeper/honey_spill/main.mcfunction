# Summon a lingering potion
execute summon lingering_potion run tag @s add current
execute anchored eyes run tp @n[tag=current] ^ ^ ^1
execute as @n[tag=current] run data merge entity @s {Tags:["bee_keeper","current"],Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:potion_contents":{custom_color:16351261,custom_effects:[{id:"minecraft:unluck",amplifier:127,duration:1,show_particles:0b,show_icon:0b,ambient:0b}]}}}}

# apply motion to "throw" it
execute store result score @s dummy run data get entity @s Pos[0] 1000
execute store result score %temp dummy run data get entity @n[tag=current,limit=1] Pos[0] 1000
execute store result storage bee_keeper:temp Motion double -0.0005 run scoreboard players operation @s dummy -= %temp dummy
execute as @n[tag=current] run data modify entity @s Motion[0] set from storage bee_keeper:temp Motion

execute store result score @s dummy run data get entity @s Pos[1] 1000
execute store result score %temp dummy run data get entity @n[tag=current,limit=1] Pos[1] 1000
execute store result storage bee_keeper:temp Motion double -0.0001 run scoreboard players operation @s dummy -= %temp dummy
execute as @n[tag=current] run data modify entity @s Motion[1] set from storage bee_keeper:temp Motion

execute store result score @s dummy run data get entity @s Pos[2] 1000
execute store result score %temp dummy run data get entity @n[tag=current,limit=1] Pos[2] 1000
execute store result storage bee_keeper:temp Motion double -0.0005 run scoreboard players operation @s dummy -= %temp dummy
execute as @n[tag=current] run data modify entity @s Motion[2] set from storage bee_keeper:temp Motion

#remove unnecessary tags
tag @n[tag=current] remove current

# begin checks to see if it lands
schedule function bee_keeper:bee_keeper/honey_spill/schedule 1t

# cooldown 6 seconds
schedule function bee_keeper:bee_keeper/schedule 320t