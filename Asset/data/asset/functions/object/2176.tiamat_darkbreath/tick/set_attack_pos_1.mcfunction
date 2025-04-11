#> asset:object/2176.tiamat_darkbreath/tick/set_attack_pos_1
#
# Objectのtick時の処理
#
# @within asset:object/2176.tiamat_darkbreath/tick/

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkmAIwAM1c1lARgEwC0KcArAMysAszDqwAcw5o1YAzFAENqpSQDZFpAOxxFYAgDsZAWwTJAYYoACSlrAwZGfQGck4FAHtC2iEmEEObuBgdgANxlsQkNwAA8kagIoKIBfOIIbUjRCe0RVADpOAlsIa3dEaLA4bGw0GFtDGmKMJ3yIQ2K0WwBRMoqq1oBHQmDsKABlKw5yRElgqoSAXSA_3
# 円 1
execute positioned ^0 ^ ^-7.5 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}
execute positioned ^5.3033 ^ ^-5.3033 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}
execute positioned ^7.5 ^ ^0 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}
execute positioned ^5.3033 ^ ^5.3033 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}
execute positioned ^0 ^ ^7.5 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}
execute positioned ^-5.3033 ^ ^5.3033 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}
execute positioned ^-7.5 ^ ^0 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}
execute positioned ^-5.3033 ^ ^-5.3033 run summon area_effect_cloud ~ ~ ~ {Duration:33,Tags:["2176.AttackPosition"]}

# 角度調整
    execute as @e[type=area_effect_cloud,tag=2176.AttackPosition] at @s facing entity @e[type=marker,tag=2176.Root,limit=1] feet run tp @s ~ ~ ~ ~180 0
