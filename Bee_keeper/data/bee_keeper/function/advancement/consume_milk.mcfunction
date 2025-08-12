# run by advancement consume_milk
# @s = player

# Clears all effects and modifiers
attribute @s movement_speed modifier remove bee_keeper.honey_spill
attribute @s jump_strength modifier remove bee_keeper.honey_spill

# resets advancement
advancement revoke @s only bee_keeper:consume_milk