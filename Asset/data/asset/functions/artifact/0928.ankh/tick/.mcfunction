#> asset:artifact/0928.ankh/tick/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/928/tick/

# 演出
    particle minecraft:totem_of_undying ~ ~1.2 ~ 1.5 0.2 1.5 0 40 force @s
    execute rotated ~ 0 positioned ~ ~0.2 ~ run function asset:artifact/0928.ankh/tick/vfx

# 範囲内のプレイヤーの最大体力の5%を回復
    execute as @a[distance=..6] at @s run function asset:artifact/0928.ankh/tick/4.heal
