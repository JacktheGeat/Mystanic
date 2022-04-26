execute as @s[tag=lightning_elemental] at @s as @p[tag=chromwand_elemental_master] at @s rotated as @s rotated ~ 0 run tp @e[tag=lightning_elemental,limit=1,sort=nearest] ^ ^1 ^-1 ~ ~
execute as @s[tag=chromwand_frost] at @s run particle falling_dust snow ~ ~ ~ 5 10 5 1 10 force
execute if entity @s[tag=chromwand_shadow_marker] at @s run function puff:combat/custom_entity/armor_stand/shadow
