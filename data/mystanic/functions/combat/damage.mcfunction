# dmg = the damage being dealt
# owner = the owner of the damage
# target = the target of the damage
$scoreboard players set %dmg CE_dummy $(dmg)
$execute store result score %target_armor CE_dummy run attribute $(target) minecraft:generic.armor get
tellraw @p {"score":{"name":"%target_armor","objective":"CE_dummy"}}
scoreboard players reset %dmg CE_dummy 
scoreboard players reset %target_armor CE_dummy 