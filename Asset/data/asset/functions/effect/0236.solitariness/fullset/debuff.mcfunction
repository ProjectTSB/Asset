#> asset:effect/0236.solitariness/fullset/debuff
#
#
#
# @within function asset:effect/0236.solitariness/fullset/passive

# 自己嫌悪を付与
    data modify storage api: Argument.ID set value 336
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# スコア戻す
    scoreboard players set @s 236.Time 0
