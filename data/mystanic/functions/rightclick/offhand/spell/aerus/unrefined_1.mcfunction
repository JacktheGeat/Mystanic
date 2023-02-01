execute as @e[type=!player,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 as @s[dx=0] run say hi
execute as @s run particle vibration 1 2 3 4 ~ ~ ~ 0 0 0 0 1
execute positioned ^ ^ ^1 if entity @s[distance=0.1..10] unless entity @e[type=!player,dx=0] run function mystanic:rightclick/offhand/spell/aerus/unrefined_1