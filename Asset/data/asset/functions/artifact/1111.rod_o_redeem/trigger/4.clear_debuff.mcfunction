#> asset:artifact/1111.rod_o_redeem/trigger/4.clear_debuff
#
# デバフを全解除する
#
# @within function asset:artifact/1111.rod_o_redeem/trigger/3.main

# デバフ全解除
    data modify storage api: Argument.ClearLv set value 2
    data modify storage api: Argument.ClearType set value "bad"
    function api:entity/mob/effect/remove/from_level
