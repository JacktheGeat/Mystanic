# run by advancement bee_keeper_summon.mcfunction
# @s = server
# located at 0 0 0

# set marker to summon the bee keeper at
execute summon marker run tag @s add bee_keeper.spawnMarker

# spawn notice
playsound entity.bee.loop_aggressive hostile @a
tellraw @s [{"text":"A furrious buzzing sound approaches...","color":"yellow"}]

# schedule summoning of bee keeper
execute run schedule function bee_keeper:bee_keeper/schedule_summon 80t append

# reset advancement for resummoning
advancement revoke @s only bee_keeper:bee_keeper_summon