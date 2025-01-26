#> asset:artifact/0928.ankh/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0928.ankh/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:totem_of_undying ~ ~1.2 ~ 1.5 0.2 1.5 0 40 force @s
    execute rotated ~ 0 positioned ~ ~0.2 ~ run function asset:artifact/0928.ankh/vfx

# 範囲内のプレイヤーの最大体力の5%を回復
    execute as @a[distance=..6] at @s run function asset:artifact/0928.ankh/trigger/4.heal
