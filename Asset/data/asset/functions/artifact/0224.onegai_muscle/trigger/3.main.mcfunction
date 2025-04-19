#> asset:artifact/0224.onegai_muscle/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0224.onegai_muscle/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:trial_spawner_detection ~ ~ ~ 2 0.4 2 0 120
    particle angry_villager ~ ~1 ~ 1.2 0.5 1.2 0 10 normal @a
    playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 0.7 2

# バリアバフ
    data modify storage api: Argument.ID set value 333
    data modify storage api: Argument.FieldOverride.Barrier set value 10
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
