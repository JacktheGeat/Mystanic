execute as @s[type=minecraft:bee] run data modify entity @s AngerTime set value 100
execute as @s[type=minecraft:bee] run data modify entity @s AngryAt set from entity @e[tag=!friendly,type=!player,type=!area_effect_cloud,type=!#arrows,sort=nearest,limit=1] UUID
execute as @s[type=minecraft:bee] run scoreboard players add @s CE_dummy 1
execute as @s[type=minecraft:bee] if score @s CE_dummy matches 1200.. run kill @s