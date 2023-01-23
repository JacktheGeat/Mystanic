setblock ~ -64 ~ minecraft:yellow_shulker_box
data modify storage test data set from entity @s Inventory[{Slot:-106b}]
data modify storage test data.Slot set value 0
data modify block ~ -64 ~ Items append from storage test data
item replace entity @s weapon.offhand with minecraft:air
loot give @s mine ~ -64 ~ minecraft:air{drop_contents:1b}
setblock ~ -64 ~ minecraft:bedrock
data modify storage test data set value {}
advancement revoke @s only mystanic:handed_check
advancement revoke @s only mystanic:handed_check2

