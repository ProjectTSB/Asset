#> asset:artifact/0224.onegai_muscle_1/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0224.onegai_muscle_1/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 0.7 2
    particle angry_villager ~ ~1 ~ 0.5 0.5 0.5 0 30 normal @a

# バリアバフ
    data modify storage api: Argument.ID set value 333
    data modify storage api: Argument.FieldOverride.Barrier set value 10
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
