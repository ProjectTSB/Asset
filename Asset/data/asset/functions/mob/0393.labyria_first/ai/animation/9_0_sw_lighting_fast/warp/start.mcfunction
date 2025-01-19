#> asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/warp/start
#
# 初めのワープ処理
#
# @within function asset:mob/0393.labyria_first/ai/animation/9_0_sw_lighting_fast/

# 範囲外にワープ
    tp @s ^ ^ ^50 ~ ~
    function asset:mob/0393.labyria_first/ai/general/3.teleport_effect/
    tp @s ~ ~50 ~ ~ ~

# この技の時は干渉不可
    data modify entity @s Invulnerable set value 1b
    tag @s add Uninterferable
