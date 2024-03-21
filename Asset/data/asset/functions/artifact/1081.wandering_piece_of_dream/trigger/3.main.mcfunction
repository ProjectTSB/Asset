#> asset:artifact/1081.wandering_piece_of_dream/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1081.wandering_piece_of_dream/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# Effect付与対象: 使用者 & 周囲の現在体力の最も低いプレイヤー3名

# 付与対象にTagを付与
    tag @s add U1.EffectTarget

# 現在体力の低いプレイヤーを検索してTagを付与
# 再帰でやるか迷ったけどこっちでやることにした
    execute if entity @p[tag=!U1.EffectTarget,distance=..10] run function asset:artifact/1081.wandering_piece_of_dream/trigger/4.find_lowest_health_player
    execute if entity @p[tag=!U1.EffectTarget,distance=..10] run function asset:artifact/1081.wandering_piece_of_dream/trigger/4.find_lowest_health_player
    execute if entity @p[tag=!U1.EffectTarget,distance=..10] run function asset:artifact/1081.wandering_piece_of_dream/trigger/4.find_lowest_health_player

# Tagが付与されたプレイヤーにEffectを付与
    execute as @a[tag=U1.EffectTarget] run function asset:artifact/1081.wandering_piece_of_dream/trigger/6.give_effect

# リセット
    tag @a[tag=U1.EffectTarget] remove U1.EffectTarget