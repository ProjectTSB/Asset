#> asset:artifact/0019.scripture/trigger/effect/clear_debuff
#
#
#
# @within function asset:artifact/0019.scripture/trigger/3.main

# 解除Lv2で1つ解除
    data modify storage api: Argument.ClearLv set value 2
    data modify storage api: Argument.ClearType set value "bad"
    data modify storage api: Argument.ClearCount set value 1
    function api:entity/mob/effect/remove/from_level
    function api:entity/mob/effect/reset
