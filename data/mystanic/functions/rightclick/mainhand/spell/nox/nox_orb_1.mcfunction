# Blind eye spell
# Summons an armor stand and rotate it as the player.
execute anchored eyes positioned ~ ~ ~ rotated as @s run summon armor_stand ~ ~ ~ {Tags:["blind_eye","mystanic_custom","nox"],Marker:1,Invisible:1,Invulnerable:1,Small:1}
execute rotated as @s as @e[type=armor_stand,tag=blind_eye,sort=nearest] run tp @s ~ ~ ~ ~ ~

# from here on out commands commence in mystanic:combat/custom_entity/armor_stand