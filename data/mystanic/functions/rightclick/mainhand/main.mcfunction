execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Mystanic:{type:"weapon"}}}}}] run function mystanic:rightclick/mainhand/weapon/main
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Mystanic:{type:"spell"}}}}}] run function mystanic:rightclick/mainhand/spell/main
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Mystanic:{type:"misc"}}}}}] run function mystanic:rightclick/mainhand/misc/main
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Mystanic:{type:"totem"}}}}}] run function mystanic:rightclick/mainhand/totem/main
say mainhand