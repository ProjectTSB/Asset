#> asset:artifact/1606.dimension_knife/tick/give_buff
#
#
#
# @within function asset:artifact/1606.dimension_knife/tick/3.main

# 演出 (自分にしか聞こえない)
    playsound tsb_sounds:electric1 player @s ~ ~ ~ 0.7 1.5

# バフを付与
    data modify storage api: Argument.ID set value 387
    #data modify storage api: Argument.Duration set value 2147483647
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    scoreboard players reset @s 18M.MoveSum
