#> asset:mob/0392.ecual_first/ai/animation/100_0_opening/end
#
# 終了処理
#
# @within function asset:mob/0392.ecual_first/ai/animation/100_0_opening/

function asset:mob/0392.ecual_first/ai/general/7.idle_motion_change

# 干渉可能となる
    data modify entity @s Invulnerable set value 0b
    tag @s remove Uninterferable
