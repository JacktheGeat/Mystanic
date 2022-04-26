execute at @s positioned ~ ~30 ~ run summon fireball ~ ~ ~ {ExplosionPower:4,power:[0.0,-0.2,0.0],Tags:["chromwand_meteor","chromwand_flare"]}
execute positioned ~ ~30 ~ run data modify entity @e[tag=chromwand_meteor,limit=1,sort=nearest] Owner set from entity @s Owner
kill @s
