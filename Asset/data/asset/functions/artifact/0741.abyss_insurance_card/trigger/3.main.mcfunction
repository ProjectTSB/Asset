#> asset:artifact/0741.abyss_insurance_card/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0741.abyss_insurance_card/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 落下ダメージ無効化
    data modify storage api: Argument set value {ID:190,Duration:60,Stack:10}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# テレポート
    execute in minecraft:overworld run tp @s 23 3 24

# 演出
    particle portal 23 3 24 0 0 0 2 250 force @a
    particle effect 23 3 24 0 10 0 0.1 250 force @a
    playsound entity.illusioner.prepare_blindness player @s 23 3 24 1 0 1
