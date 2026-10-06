#> asset:artifact/0772.dolphin_amulet/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0772.dolphin_amulet/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 装備判定tag
    tag @s add LG.Equipped

# 演出
    particle dolphin ~ ~1.2 ~ 0.5 0.5 0.5 0 80 normal @a
    playsound entity.dolphin.ambient_water neutral @a ~ ~ ~ 0.8 1 0

# エフェクト
    data modify storage api: Argument.ID set value 356
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
