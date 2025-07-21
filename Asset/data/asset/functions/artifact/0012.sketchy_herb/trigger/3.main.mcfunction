#> asset:artifact/0012.sketchy_herb/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0012.sketchy_herb/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle minecraft:smoke ~ ~ ~ 1 1 1 0.1 500 force @s
    playsound minecraft:block.honey_block.fall player @s ~ ~ ~ 1 0.1
    tellraw @s [{"text":"気分が不安定になってゆく……","color":"dark_green","italic":true}]

# 目覚めの力(ID:280)を付与
    data modify storage api: Argument.ID set value 280
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 中毒(ID:281)を解除
    data modify storage api: Argument.ID set value 281
    function api:entity/mob/effect/remove/from_id
    function api:entity/mob/effect/reset
