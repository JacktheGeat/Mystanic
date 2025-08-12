# run by advancement/bee_keeper_summon.mcfunction
# @s = server
# located at 0 0 0

# When coming out of schedule set the marker entity as location and source entity
execute as @n[type=marker, tag=bee_keeper.spawnMarker] at @s run function bee_keeper:bee_keeper/summon