particle falling_dust black_concrete ~ ~ ~ 0.1 1 0.1 1 10 force
execute as @a if score @s id = @e[tag=chromwand_shadow_marker,limit=1,sort=nearest] id rotated as @s as @e[tag=chromwand_shadow_marker,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~
kill @s[predicate=!puff:player/is_shadow]
