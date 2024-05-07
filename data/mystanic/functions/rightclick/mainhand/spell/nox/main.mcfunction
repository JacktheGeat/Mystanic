execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Mystanic:{subtype:refined}}}}}] run function mystanic:rightclick/mainhand/spell/nox/refined/main
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Mystanic:{subtype:unrefined}}}}}] run function mystanic:rightclick/mainhand/spell/nox/unrefined/main
say nox spell!
