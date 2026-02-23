#> asset:object/2267.gem_shot_attack/tick/set_attack_pos_2
#
# Objectのtick時の処理
#
# @within asset:object/2267.gem_shot_attack/tick/

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAIyUAMAzAGYBGAHCgLR11N3sAsKOgFZ2AQyZCATOxpCmpFnQDsiunFFgCAO1EBbBMkBhigAJKmsDFEY9AZyTgUAe0JaISSgDYCKOK7gZ7MAA3UWxCA3AADyQaAigYgF8EgmtSNEI7REoWAhsIKzdEWLA4bGw0GBsDWmKMR3yIA2K0GwBRMoqq1oBHQlDsKABlSx9yRAZQqqSAXSA_3
# 円 1
execute positioned ^0 ^0.05 ^-18 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^6.8883 ^0.1 ^-16.62983 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^12.72792 ^ ^-12.72792 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^16.62983 ^0.05 ^-6.8883 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^18 ^0.1 ^0 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^16.62983 ^ ^6.8883 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^12.72792 ^0.05 ^12.72792 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^6.8883 ^0.1 ^16.62983 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^0 ^ ^18 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-6.8883 ^0.05 ^16.62983 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-12.72792 ^0.1 ^12.72792 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-16.62983 ^ ^6.8883 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-18 ^0.05 ^0 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-16.62983 ^0.1 ^-6.8883 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-12.72792 ^ ^-12.72792 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}
execute positioned ^-6.8883 ^0.05 ^-16.62983 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2267.AttackPosition"]}

# 角度調整
    execute as @e[type=area_effect_cloud,tag=2267.AttackPosition,distance=..50] at @s facing entity @e[type=marker,tag=2267.Root,distance=..50,limit=1] feet run tp @s ~ ~ ~ ~180 0
