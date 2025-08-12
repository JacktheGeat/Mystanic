# run by bee_keeper/attack.mcfunction
# @s = bee keeper
# located at bee_keeper

# Summons 2 bees
summon bee ~ ~ ~
summon bee ~ ~ ~

# cooldown of 8 seconds
schedule function bee_keeper:bee_keeper/schedule 160