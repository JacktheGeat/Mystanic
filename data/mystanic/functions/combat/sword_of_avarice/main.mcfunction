execute if entity @s[nbt={SelectedItem:{tag:{Mystanic:{id:"sword_of_avarice"}}}}] as @s run function mystanic:combat/sword_of_avarice/grow
execute if entity @s[scores={avarice_death=1..}] as @s run function mystanic:combat/sword_of_avarice/death