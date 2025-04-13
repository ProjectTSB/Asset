#> asset:object/1041.grand_flame/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1041/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    function asset:object/1041.grand_flame/tick/vfx/flying

# 消滅処理
    execute unless predicate lib:is_vehicle run function asset:object/1041.grand_flame/tick/landing
    execute if score @s General.Object.Tick matches 100.. run function asset:object/1041.grand_flame/tick/landing
