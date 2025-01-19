#> asset:mob/0398.crystal_healer/ai/heal/loop
#
# 回復エフェクト ループ処理
#
# @within function
#   asset:mob/0398.crystal_healer/ai/heal/
#   asset:mob/0398.crystal_healer/ai/heal/loop

# 演出
    execute unless entity @e[type=wither_skeleton,scores={MobID=392},distance=..100] run return 0
    particle dust 0.125 1 0.2 1 ~ ~ ~ 0.05 0.05 0.05 0 3 force @a[distance=..32]
    execute positioned ^ ^ ^0.5 unless entity @e[type=wither_skeleton,scores={MobID=392},distance=..2.6] run function asset:mob/0398.crystal_healer/ai/heal/loop
