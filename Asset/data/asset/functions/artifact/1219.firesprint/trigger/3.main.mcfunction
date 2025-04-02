#> asset:artifact/1219.firesprint/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1219.firesprint/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く


# 演出
    playsound entity.blaze.death player @a ~ ~ ~ 1 2
    playsound block.lava.extinguish player @a ~ ~ ~ 1 1
    particle lava ~ ~0.5 ~ 0 1 0 0 100

# エフェクトを付与
    data modify storage api: Argument.ID set value 313
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
