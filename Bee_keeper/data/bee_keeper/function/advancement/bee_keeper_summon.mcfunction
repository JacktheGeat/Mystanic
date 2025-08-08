# set marker to summon the bee keeper at
execute run summon marker ~ ~ ~ {Tags:["Bee_Keeper_Marker"]}

# spawn notice
playsound entity.bee.loop_aggressive hostile @a
tellraw @s [{"text":"A furrious buzzing sound approaches...","color":"yellow"}]

# schedule summoning of bee keeper
execute run schedule function bee_keeper:bee_keeper/schedule_summon 80t append

# reset advancement for resummoning
advancement revoke @s only bee_keeper:adventure/bee_keeper_summon