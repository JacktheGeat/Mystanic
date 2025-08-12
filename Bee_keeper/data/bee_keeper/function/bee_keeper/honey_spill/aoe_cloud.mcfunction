# run by bee_keeper/honey_spill/schedule.mcfunction
# @s = aoe_cloud
# located at aoe_cloud

# if players are in area, apply modifier effects
execute as @a[distance=..3] run function bee_keeper:bee_keeper/honey_spill/effect

particle dripping_honey ~ ~ ~ 2.5 0 2.5 0 100
kill @s