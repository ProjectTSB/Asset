#> asset:object/2044.lastboss_ice_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2044/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=400..}]

# 加速処理
    execute if score @s General.Object.Tick matches 5 run data modify storage asset:context this.StepPerTick set value 1
    execute if score @s General.Object.Tick matches 5 run data modify storage asset:context this.MovePerStep set value 0.5
    execute if score @s General.Object.Tick matches 20 run data modify storage asset:context this.StepPerTick set value 2
    execute if score @s General.Object.Tick matches 30 run data modify storage asset:context this.StepPerTick set value 3

# Super!
    function asset:object/super.tick

# 誘導！
    function asset:object/2044.lastboss_ice_bullet/tick/homing.m with storage asset:context this
