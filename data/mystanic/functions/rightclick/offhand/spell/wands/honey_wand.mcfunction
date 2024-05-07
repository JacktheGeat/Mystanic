execute positioned ~ ~1.5 ~ run summon bee ^ ^ ^0.2 {Tags:["friendly","mystanic_custom"],DeathLootTable:"mystanic:none"}
execute positioned ~ ~1.5 ~ positioned ^ ^ ^0.2 as @e[type=bee,limit=1,sort=nearest] run scoreboard players set @s CE_dummy 0
scoreboard players remove @s player_mana 20
say clicks