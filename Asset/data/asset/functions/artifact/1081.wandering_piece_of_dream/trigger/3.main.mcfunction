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
    execute if entity @p[tag=!U1.EffectTarget,distance=..20] run function asset:artifact/1081.wandering_piece_of_dream/trigger/4.find_lowest_health_player
    execute if entity @p[tag=!U1.EffectTarget,distance=..20] run function asset:artifact/1081.wandering_piece_of_dream/trigger/4.find_lowest_health_player
    execute if entity @p[tag=!U1.EffectTarget,distance=..20] run function asset:artifact/1081.wandering_piece_of_dream/trigger/4.find_lowest_health_player

# 演出
    execute at @a[tag=U1.EffectTarget,distance=..20] run particle dust 1000000000 0.5 1000000000 1.5 ~ ~1.2 ~ 0.8 0.4 0.8 0 5 normal @a
    execute at @a[tag=U1.EffectTarget,distance=..20] run particle dust 1000000000 0.8 1000000000 0.8 ~ ~1.2 ~ 0.8 0.4 0.8 0 20 normal @a
    playsound block.beacon.activate player @a ~ ~ ~ 0.7 1.1
    playsound block.beacon.activate player @a ~ ~ ~ 0.7 1.2
    playsound entity.evoker.prepare_summon player @a ~ ~ ~ 0.6 1.2

# Tagが付与されたプレイヤーにEffectを付与
    execute as @a[tag=U1.EffectTarget] run function asset:artifact/1081.wandering_piece_of_dream/trigger/6.give_effect

# リセット
    tag @a[tag=U1.EffectTarget] remove U1.EffectTarget