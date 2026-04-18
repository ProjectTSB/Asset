#> asset:object/2262.gem_panjan_drone/tick/start_idle
#
# Objectのtick時の処理
#
# @within asset:object/2262.gem_panjan_drone/tick/event_start

# idleに移行
    tag @s remove 2262.Phase.Start
    tag @s add 2262.Phase.Idle
    scoreboard players set @s General.Object.Tick 0
