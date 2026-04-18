#> asset:object/2267.gem_shot_attack/tick/set_attack_pos_1
#
# Objectのtick時の処理
#
# @within asset:object/2267.gem_shot_attack/tick/

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAIyUAMAzAGYBGAHCgLR11N3sAsKOgFZ2AQyZCATOxpCmpFnQDsiunFFgCAO1EBbBMkBhigAJKmsDFEY9AZyTgUAe0JaISFgRRxXcDPbAAbqLYhAbgAB5INARQUQC+cQTWpGiEdoi0BDYQVm6I0WBw2NhoMDYGtAUYjjkQBgVoNgCixaXlTQCOhMHYUADKll7kiAzB5QkAukA_3
# 円 1
execute positioned ^0 ^ ^-10 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^7.07107 ^ ^-7.07107 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^10 ^ ^0 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^7.07107 ^ ^7.07107 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^0 ^ ^10 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-7.07107 ^ ^7.07107 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-10 ^ ^0 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-7.07107 ^ ^-7.07107 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}

# 角度調整
    execute as @e[type=area_effect_cloud,tag=2267.AttackPosition,distance=..50] at @s facing entity @e[type=marker,tag=2267.Root,distance=..50,limit=1] feet run tp @s ~ ~ ~ ~180 0
