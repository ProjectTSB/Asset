#> asset:artifact/1111.rod_o_redeem/trigger/4.clear_debuff
#
# デバフを全解除する
#
# @within function asset:artifact/1111.rod_o_redeem/trigger/3.main

# 演出
    particle dust -0.4 100000000 -0.2 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 20
    particle wax_off ~ ~1.2 ~ 0 0 0 12 60 normal @a

# デバフ全解除
    data modify storage api: Argument.ClearLv set value 2
    data modify storage api: Argument.ClearType set value "bad"
    function api:entity/mob/effect/remove/from_level
