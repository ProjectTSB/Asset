#> asset:object/2267.gem_shot_attack/tick/set_attack_pos_3
#
# Objectのtick時の処理
#
# @within asset:object/2267.gem_shot_attack/tick/

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAIyUAMAzAGYBGAHCgLR11N3sAsKOgFZ2AQyZCATOxpCmpFnQDsiunFFgCAO1EBbBMkBhigAJKmsDFEY9AZyTgUAe0JaISSXwIo4ruBntgAG6i2IQG4AAeSDQEUNEAvvEE1qRohHaIkgBsBDYQVm6IMWBw2NhoMDYGtMUYjvkQBsVoNgCiZRVVrQCOhCHYUADKlt7kiAwhVYkAukA_3
# 円 1
execute positioned ^0 ^ ^-26 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^6.7293 ^ ^-25.11407 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^13 ^ ^-22.51666 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^18.38478 ^ ^-18.38478 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^22.51666 ^ ^-13 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^25.11407 ^ ^-6.7293 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^26 ^ ^0 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^25.11407 ^ ^6.7293 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^22.51666 ^ ^13 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^18.38478 ^ ^18.38478 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^13 ^ ^22.51666 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^6.7293 ^ ^25.11407 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^0 ^ ^26 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-6.7293 ^ ^25.11407 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-13 ^ ^22.51666 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-18.38478 ^ ^18.38478 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-22.51666 ^ ^13 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-25.11407 ^ ^6.7293 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-26 ^ ^0 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-25.11407 ^ ^-6.7293 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-22.51666 ^ ^-13 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-18.38478 ^ ^-18.38478 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-13 ^ ^-22.51666 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-6.7293 ^ ^-25.11407 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}

# 角度調整
    execute as @e[type=area_effect_cloud,tag=2267.AttackPosition,distance=..50] at @s facing entity @e[type=marker,tag=2267.Root,distance=..50,limit=1] feet run tp @s ~ ~ ~ ~180 0
