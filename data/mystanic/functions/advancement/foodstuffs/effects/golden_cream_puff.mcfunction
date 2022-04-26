effect give @s regeneration 5 0

effect give @s resistance 90 0

effect give @s saturation 1 2 false

effect give @s strength 90 0

effect give @s instant_health 1 0

execute at @s run effect give @e[type=#mystanic:enemy,distance=..10] minecraft:weakness 60 0

advancement revoke @s only mystanic:foodstuffs/effects/golden_cream_puff
