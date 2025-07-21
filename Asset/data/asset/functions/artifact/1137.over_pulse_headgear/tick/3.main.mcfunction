#> asset:artifact/1137.over_pulse_headgear/tick/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1137.over_pulse_headgear/tick/2.check_condition

# 採掘速度上昇をつける
# Haste = $VL.Stack - 1
    data modify storage api: Argument.ID set value 274
    function api:entity/mob/effect/get/from_id
    execute store result score $VL.Stack Temporary run data get storage api: Return.Effect.Stack
    execute store result storage asset:temp VL.Level int 1 run scoreboard players remove $VL.Stack Temporary 2
    execute if score $VL.Stack Temporary matches ..-1 run effect clear @s haste
    execute if score $VL.Stack Temporary matches 0.. run function asset:artifact/1137.over_pulse_headgear/tick/haste.m with storage asset:temp VL

# リセット
    scoreboard players reset $VL.Stack Temporary
    data remove storage asset:temp VL
