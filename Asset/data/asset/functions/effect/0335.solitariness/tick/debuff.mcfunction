#> asset:effect/0335.solitariness/tick/debuff
#
#
#
# @within function asset:effect/0335.solitariness/tick/

# 自己嫌悪を付与
    data modify storage api: Argument.ID set value 336
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# スコア戻す
    scoreboard players set @s 335.Time 0
