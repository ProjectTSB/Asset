#> asset:object/1040.thelema_persuit_sword/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1040/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 演出
    execute if entity @s[scores={General.Object.Tick=..5}] run particle dust 1 1 100000000 1 ~ ~0.3 ~ 0 0 0 0 1 normal @a
    execute if entity @s[scores={General.Object.Tick=..10}] run particle dust 1 1 100000000 1 ~ ~0.5 ~ 0 0 0 0 1 normal @a

# 停止する
    execute if entity @s[scores={General.Object.Tick=6}] run data modify storage asset:context this.MovePerStep set value 0

# 落ちる
    execute if entity @s[scores={General.Object.Tick=15}] run data modify storage asset:context this.StepPerTick set value 6
    execute if entity @s[scores={General.Object.Tick=15}] run data modify storage asset:context this.MovePerStep set value 0.2

# 消滅
    execute if entity @s[scores={General.Object.Tick=25..}] run function asset:object/call.m {method:kill}

# 継承
    function asset:object/super.tick
