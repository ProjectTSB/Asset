#> asset:object/2261.gem_yeeter_drone/tick/start_idle
#
# Objectのtick時の処理
#
# @within asset:object/2261.gem_yeeter_drone/tick/event_start

# idleに移行
    tag @s remove 2261.Phase.Start
    tag @s add 2261.Phase.Idle
    scoreboard players set @s General.Object.Tick 0
