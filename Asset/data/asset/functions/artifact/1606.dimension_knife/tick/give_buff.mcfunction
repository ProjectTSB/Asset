#> asset:artifact/1606.dimension_knife/tick/give_buff
#
#
#
# @within function asset:artifact/1606.dimension_knife/tick/3.main

# 演出
    particle dust_color_transition 1 0.4 1 1 0.4 0.21 0.8 ~ ~0.4 ~ 0.4 0.2 0.4 0 20 normal @a
    playsound tsb_sounds:electric1 player @a ~ ~ ~ 0.7 1.5

# バフを付与
    data modify storage api: Argument.ID set value 387
    #data modify storage api: Argument.Duration set value 2147483647
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset @s 18M.MoveSum
