#> asset:effect/0374.charge_plasma/re-given/charge/3
#
#
#
# @within function asset:effect/0374.charge_plasma/re-given/

# スタック数を増やす
    data modify storage asset:context Stack set value 3

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
