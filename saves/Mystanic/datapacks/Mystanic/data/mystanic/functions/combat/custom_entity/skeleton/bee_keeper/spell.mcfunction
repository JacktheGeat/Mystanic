execute if predicate puff:rng/rng_100 run function puff:combat/custom_entity/skeleton/bee_keeper/summon_worker
execute if predicate puff:rng/rng_500 if score @s CE_dummy matches ..0 run function puff:combat/custom_entity/skeleton/bee_keeper/summon_soldier
execute if predicate puff:rng/rng_100 if score @s CE_dummy matches ..0 unless entity @e[type=minecraft:area_effect_cloud,tag=honey_spill,distance=..30] run function puff:combat/custom_entity/skeleton/bee_keeper/honey_spill
