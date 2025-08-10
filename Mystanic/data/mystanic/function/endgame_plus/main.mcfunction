execute as @n[tag=mystanic_regenerator,type=#undead] run effect give @s instant_damage 1 0
execute as @n[type=zombie,limit=20,distance=..100,tag=!tagged] run function mystanic:endgame_plus/zombie_check
# execute as @n[type=skeleton,limit=20,distance=..100,tag=!tagged] run function mystanic:endgame_plus/skeleton_check
