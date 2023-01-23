# set -64 to an oak sign with text that shows the number of kills you have
setblock ~ -64 ~ oak_sign{Text1:'[{"score":{"name":"@p[nbt={SelectedItem:{tag:{Mystanic:{id:\\"sword_of_avarice\\"}}}}]","objective":"avarice_kills"},"color":"dark_red","italic":false},{"text":"\\uE000","color":"red"}]'}

# store your item in an editable storage
data modify storage avarice_data data set from entity @s SelectedItem

# acquire the lore data from the sign
data modify storage avarice_data data.tag.display.Lore[3] set from block ~ -64 ~ Text1

# apply math
scoreboard players operation #num CE_dummy = @s avarice_kills
scoreboard players operation @s CE_dummy = @s avarice_kills
scoreboard players add #num CE_dummy 300
scoreboard players operation @s CE_dummy *= #100 CE_dummy
scoreboard players operation @s CE_dummy *= #100 CE_dummy
scoreboard players operation @s CE_dummy /= #num CE_dummy
execute store result storage avarice_data data.tag.AttributeModifiers[0].Amount double 0.01 run scoreboard players get @s CE_dummy

#set -64 to a yellow shulker box
setblock ~ -64 ~ yellow_shulker_box

# store the sword into the shulker box
data modify block ~ -64 ~ Items append from storage avarice_data data

# replace your sword with the new one
item replace entity @s weapon.mainhand from block ~ -64 ~ container.0