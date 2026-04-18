#> asset:artifact/1401.yuzu/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1401.yuzu/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle dust 1 0.9 0.3 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 40 normal @a
    playsound ogg:random.levelup player @a ~ ~ ~ 0.8 1.95

# バフを付与
    data modify storage api: Argument.ID set value 350
    data modify storage api: Argument.Duration set value 400
    data modify storage api: Argument.FieldOverride.Amount set value 20
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
