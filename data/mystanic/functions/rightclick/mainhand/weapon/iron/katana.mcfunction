particle sweep_attack ~ ~1 ~ 0 0 0 0 1
execute rotated ~ 0 positioned ^ ^ ^0.25 if block ^ ^ ^0.5 air if block ^ ^ ^1 air if entity @s[distance=..8] run function mystanic:rightclick/mainhand/weapon/iron/katana
execute at @s rotated ~ 0 run tp @s ^ ^ ^0.25
