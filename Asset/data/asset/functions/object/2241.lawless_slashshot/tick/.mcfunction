#> asset:object/2241.lawless_slashshot/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2241/tick

# 飛距離が0になったらTick加算を開始
    scoreboard players add @s[tag=2241.RangeOver] General.Object.Tick 1

# 縮んでいく
    execute if score @s General.Object.Tick matches 1 run function asset:object/2241.lawless_slashshot/tick/shrink

# 消滅処理
    kill @s[scores={General.Object.Tick=3..}]

# Super
    function asset:object/super.tick
