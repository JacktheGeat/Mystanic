particle minecraft:block redstone_block ~ ~0.25 ~ 0.5 0.5 0.5 1 1 normal
setblock ~ -64 ~ oak_sign{Text1:'[{"score":{"name":"@p[nbt={SelectedItem:{tag:{id:\\"sword_of_avarice\\"}}}]","objective":"avarice_kills"},"color":"dark_red","italic":false},{"text":"\\uE000","color":"red"}]'} replace
data modify storage avarice_data data set from entity @s SelectedItem
data modify storage avarice_data data.tag.display.Lore[3] set from block ~ -64 ~ Text1
scoreboard players operation #num CE_dummy = @s avarice_kills
scoreboard players operation @s CE_dummy = @s avarice_kills
scoreboard players add #num CE_dummy 300
scoreboard players operation @s CE_dummy *= #100 CE_dummy
scoreboard players operation @s CE_dummy *= #100 CE_dummy
scoreboard players operation @s CE_dummy /= #num CE_dummy
execute store result storage avarice_data data.tag.AttributeModifiers[0].Amount double 0.01 run scoreboard players get @s CE_dummy
setblock ~ -64 ~ yellow_shulker_box
data modify block ~ -64 ~ Items append from storage avarice_data data
loot give @s mine ~ -64 ~ minecraft:air{drop_contents:1b}
say hi