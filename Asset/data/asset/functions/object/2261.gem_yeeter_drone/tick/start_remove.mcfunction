#> asset:object/2261.gem_yeeter_drone/tick/start_remove
#
# Objectのtick時の処理
#
# @within asset:object/2261.gem_yeeter_drone/tick/event_attack

# idleに移行
    tag @s remove 2261.Phase.Attack
    tag @s add 2261.Phase.Remove
    scoreboard players set @s General.Object.Tick 0
