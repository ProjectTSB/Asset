#> asset:artifact/1465.versatile_plasma/using_item/charge/3
#
#
#
# @within function asset:artifact/1465.versatile_plasma/using_item/charge/**

# スタック数を増やす
    data modify storage api: Argument.ID set value 374
    data modify storage api: Argument.Stack set value 3
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# MP消費
    data modify storage api: Argument.Fluctuation set value -35
    data modify storage api: Argument.DisableLog set value 1b
    function api:mp/fluctuation

# 演出
    playsound block.piston.extend player @a ~ ~ ~ 2 2
    playsound block.trial_spawner.detect_player player @a ~ ~ ~ 2 0.5
    particle dust 0.8 1.0 0.5 2.0 ~ ~ ~ 0.5 1.0 0.5 1 8
    particle dust 0.5 1.0 0.5 2.5 ~ ~ ~ 0.5 1.0 0.5 1 8
    particle dust 0.8 0.8 0.3 1.5 ~ ~ ~ 0.5 1.0 0.5 1 8
