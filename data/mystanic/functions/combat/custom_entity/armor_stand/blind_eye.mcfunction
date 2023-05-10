execute if entity @s run tp @s ^ ^ ^0.4
scoreboard players add @s CE_dummy 1
execute if entity @s[scores={CE_dummy=20}] anchored eyes run summon area_effect_cloud ~ ~1.5 ~ {ReapplicationDelay:0,Radius:0f,Duration:60,Tags:["blind_eye","mystanic_custom"]}
execute if entity @s[scores={CE_dummy=20}] run kill @s
particle dust 0.6 0.4 0.7 1 ~ ~1.5 ~ 0 0 0 0 1