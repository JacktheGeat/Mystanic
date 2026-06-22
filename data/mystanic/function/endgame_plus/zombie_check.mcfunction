execute store result score #temp dummy run random value 0..100
execute if score #temp dummy matches 90..100 run function mystanic:endgame_plus/zombie_mutate
tag @s add tagged