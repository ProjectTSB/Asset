#> asset:artifact/1137.over_pulse_headgear/tick/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1137.over_pulse_headgear/tick/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    data modify storage asset:artifact IgnoreItemUpdate set value true
    function asset:artifact/common/use/head

# 暗所なら暗視を付ける
    execute if predicate asset:artifact/1137.over_pulse_headgear/in_dark if entity @s[tag=!VL.NightVision] run function asset:artifact/1137.over_pulse_headgear/tick/sfx
    execute if predicate asset:artifact/1137.over_pulse_headgear/in_dark run tag @s add VL.NightVision
    execute if predicate asset:artifact/1137.over_pulse_headgear/in_bright if entity @s[tag=VL.NightVision] run playsound block.conduit.deactivate player @s ~ ~ ~ 0.3 1.5
    execute if predicate asset:artifact/1137.over_pulse_headgear/in_bright run tag @s remove VL.NightVision
    execute if entity @s[tag= VL.NightVision] run effect give @s night_vision 11 0 true
    execute if entity @s[tag=!VL.NightVision] run effect clear @s night_vision

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
