execute if block ~ ~ ~ #enchantments_overhaul:earthquake_breakable run setblock ~ ~ ~ air destroy
execute if block ^ ^ ^1 #enchantments_overhaul:earthquake_breakable run setblock ^ ^ ^1 air destroy
tp @s ~ ~ ~ ~20 ~
execute if entity @s[y_rotation=0] run kill @s
execute rotated as @s if entity @s[y_rotation=20..] run function enchantments_overhaul:earthquake/circle_2